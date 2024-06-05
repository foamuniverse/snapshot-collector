#!/usr/bin/env python3
import psycopg
import os
import sys
from datetime import datetime
import logging

logging.basicConfig(
    format='%(asctime)s %(name)s::%(levelname)s::LOG: %(message)s'
    ,encoding='utf-8'
    ,level=logging.DEBUG)

logging.getLogger().setLevel(os.environ.get('LOGLEVEL', 'DEBUG').upper())

# Metric collections to fetch from target PostgreSQL instances.
metriclist = { 'dbstat'  : [open('/script/sql/dbstats.sql').read()]
              ,'tblstat'  : [open('/script/sql/tablestats.sql').read()]}

# Connection details for the server to snapshot statistics from
# are fetched from the environment.
targetlist = os.environ['TARGETS'].split(",")

# The separate connection details for the central collection db below.
collection_instance =   f"""host=ads-managed-database-flexible.postgres.database.azure.com
                            dbname=snapshot
                            user={os.environ['WRITER_USER']}
                            password={os.environ['WRITER_PASSWORD']}"""

def collect_snapshots(target,metric):

    t = datetime.now()

    targetconn = f"""host={target}.postgres.database.azure.com
                     user={os.environ['TARGET_READ_USER']}
                     password={os.environ['TARGET_READ_PASSWORD']}"""

    if metric == 'dbstat':
        l = datetime.now()
        # Per-database statistics are kept in a single system view
        # pg_stat_database for an instance, or *cluster* in PostgreSQL parlance
        # (clashing somewhat with cloud-y nomenclature) so we don't have to
        # loop over each db as below for table statistics, and the database to
        # connect to doesn't matter.
        targetdb = targetconn + " dbname=postgres"
        with psycopg.connect(targetdb) as conn:
            # We want the RealDictCursor from the extras module to have key/value pairs
            # since addressing row elements by number is messy & error prone esp. when
            # a column list is more than a few.
            cursor = conn.cursor(row_factory=psycopg.rows.dict_row)
            cursor.execute(metriclist[metric][0])
            rs = cursor.fetchall()

        for row in rs:
            savesql = f"""SELECT snapshot.s_dbstat (
                          '{target}'::text
                         ,'{row['datname']}'::name
                         ,{row['datid']}::oid
                         ,{row['numbackends']}
                         ,{row['xact_commit']}
                         ,{row['xact_rollback']}
                         ,{row['blks_read']}
                         ,{row['blks_hit']}
                         ,{row['tup_returned']}
                         ,{row['tup_fetched']}
                         ,{row['tup_inserted']}
                         ,{row['tup_updated']}
                         ,{row['tup_deleted']}
                         ,{row['conflicts']}
                         ,{row['temp_files']}
                         ,{row['temp_bytes']}
                         ,{row['deadlocks']}
                         ,{row['checksum_failures']}
                         ,'{row['checksum_last_failure']}'::timestamptz
                         ,{row['blk_read_time']}
                         ,{row['blk_write_time']}
                         ,{row['session_time']}
                         ,{row['active_time']}
                         ,{row['idle_in_transaction_time']}
                         ,{row['sessions']}
                         ,{row['sessions_abandoned']}
                         ,{row['sessions_fatal']}
                         ,{row['sessions_killed']}
                         ,'{row['stats_reset']}'::timestamptz
                         ,{row['dbsize']}::bigint)"""

            # We need to fix Pythonic representations like 'None' to plain SQL.
            # Using functools here seems marginally more elegant than calling
            # replace twice. Anyway it looks more sophisticated.
            from functools import reduce
            # NOTE: The ordering matters here as the first match is considered.
            repls = ('\'None\'::timestamptz', 'NULL::timestamptz'), ('None', 'NULL')
            savesql = reduce(lambda a, kv: a.replace(*kv), repls, savesql)

            logging.debug(f"""The pythonic-None-to-sql-NULL fixed saving sql: {savesql}""")

            # Saving collected metrics to a central instance:
            with psycopg.connect(collection_instance) as conn:
                cursor = conn.cursor()
                cursor.execute(savesql)
                conn.commit()

        logging.debug(f"time spent in last iteration: {datetime.now()-l}")

    elif metric == 'tblstat':
        # SQL to fetch all databases names from instance minus technical ones we don´t care about.
        db_names = open('/script/sql/dbnames.sql').read()

        # Make a connection to the target instance to snapshot statistics from to
        # fetch a list of database names.  The initial database to connect to is
        # obviously irrelevant but last time I checked the wrapper wanted a value.
        targetdb = targetconn + " dbname=postgres"
        logging.debug(f"""We're connecting to target instance: {target}""")
        with psycopg.connect(targetdb) as conn:
            cursor = conn.cursor(row_factory=psycopg.rows.dict_row)
            cursor.execute(db_names)
            rs = cursor.fetchall()
            datnames = [row['datname'] for row in rs]


        no_of_dbs = len(datnames)
        logging.debug(f"Found {no_of_dbs} databases to snapshot statistics from.")

        dbcount   = 0

        for datname in datnames:
            l = datetime.now()
            dbcount += 1
            targetdb = targetconn + f" dbname={datname}"
            logging.debug(f"connecting to {datname} using connection {target}, #{dbcount} out of {no_of_dbs} databases.")
            with psycopg.connect(targetdb) as conn:
                # We want the RealDictCursor from the extras module to have key/value pairs
                # since addressing row elements by number is messy & error prone esp. when
                # a column list is more than a few.
                cursor = conn.cursor(row_factory=psycopg.rows.dict_row)
                cursor.execute(metriclist[metric][0])

            # Need to catch edge case where a db has 0 user tables.
            if cursor.rowcount > 0: rs = cursor.fetchall()
            else: continue
        
            logging.debug(f"Calling save function with parameters in {rs[0]}")

            for row in rs:
                savesql = f"""SELECT snapshot.s_tblstat (
                             '{target}'::text
                            ,'{datname}'::name
                            ,'{row['schemaname']}'
                            ,'{row['relname']}'
                            ,{row['seq_scan']}
                            ,{row['seq_tup_read']}
                            ,{row['idx_scan']}
                            ,{row['idx_tup_fetch']}
                            ,{row['n_tup_ins']}
                            ,{row['n_tup_upd']}
                            ,{row['n_tup_del']}
                            ,{row['n_tup_hot_upd']}
                            ,{row['n_live_tup']}
                            ,{row['n_dead_tup']}
                            ,{row['n_mod_since_analyze']}
                            ,{row['n_ins_since_vacuum']}
                            ,'{row['last_vacuum']}'::timestamptz
                            ,'{row['last_autovacuum']}'::timestamptz
                            ,'{row['last_analyze']}'::timestamptz
                            ,'{row['last_autoanalyze']}'::timestamptz
                            ,{row['vacuum_count']}
                            ,{row['autovacuum_count']}
                            ,{row['analyze_count']}
                            ,{row['autoanalyze_count']})"""

                from functools import reduce
                # NOTE: The ordering matters here as the first match is considered.
                repls = ('\'None\'::timestamptz', 'NULL::timestamptz'), ('None', 'NULL')
                savesql = reduce(lambda a, kv: a.replace(*kv), repls, savesql)

                logging.debug(f"""The pythonic-None-to-sql-NULL fixed saving sql: {savesql}""")

                # Saving collected metrics to a central instance:
                with psycopg.connect(collection_instance) as conn:
                    cursor = conn.cursor()
                    cursor.execute(savesql)
                    conn.commit()

            logging.debug(f"time spent in the last loop iteration: {datetime.now()-l}")

    elapsed = datetime.now() - t
    logging.debug(f"overall elapsed time: {elapsed}")


def main():
   
    # The actual thing the program is doing, fetch a list of instance names from the
    # environment to collect a number of metrics which are essentially cumulative statistics
    # collections like pg_stat_database and pg_stat_user_tables and write snapshots to 
    # a central collection instance.
    for target in targetlist:
        for key in metriclist.keys():
            logging.debug(f"""collecting {key} data for target instance {target}""")
            collect_snapshots(target, key)


if __name__ == '__main__':
    main()
