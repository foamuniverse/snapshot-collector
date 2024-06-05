CREATE SCHEMA IF NOT EXISTS snapshot;

CREATE OR REPLACE FUNCTION snapshot.s_tblstat(
        instance_name           text,
        database                name,
        schema                  name,
        tablename               name,
        seq_scan                bigint,
        seq_tup_read            bigint,
        idx_scan                bigint,
        idx_tup_fetch           bigint,
        n_tup_ins               bigint,
        n_tup_upd               bigint,
        n_tup_del               bigint,
        n_tup_hot_upd           bigint,
        n_live_tup              bigint,
        n_dead_tup              bigint,
        n_mod_since_analyze     bigint,
        n_ins_since_vacuum      bigint,
        last_vacuum             timestamp with time zone,
        last_autovacuum         timestamp with time zone,
        last_analyze            timestamp with time zone,
        last_autoanalyze        timestamp with time zone,
        vacuum_count            bigint,
        autovacuum_count        bigint,
        analyze_count           bigint,
        autoanalyze_count       bigint
) 
RETURNS SETOF void AS $$ 
        INSERT INTO snapshot.tablehistory (
                    instance_name
                    ,database
                    ,schemaname
                    ,tblname
                    ,seq_scan           
                    ,seq_tup_read       
                    ,idx_scan           
                    ,idx_tup_fetch      
                    ,n_tup_ins          
                    ,n_tup_upd          
                    ,n_tup_del          
                    ,n_tup_hot_upd      
                    ,n_live_tup         
                    ,n_dead_tup         
                    ,n_mod_since_analyze
                    ,n_ins_since_vacuum 
                    ,last_vacuum        
                    ,last_autovacuum    
                    ,last_analyze       
                    ,last_autoanalyze   
                    ,vacuum_count       
                    ,autovacuum_count   
                    ,analyze_count      
                    ,autoanalyze_count) 
                VALUES (
                    s_tblstat.instance_name
                    ,s_tblstat.database
                    ,s_tblstat.schema
                    ,s_tblstat.tablename
                    ,s_tblstat.seq_scan           
                    ,s_tblstat.seq_tup_read       
                    ,s_tblstat.idx_scan           
                    ,s_tblstat.idx_tup_fetch      
                    ,s_tblstat.n_tup_ins          
                    ,s_tblstat.n_tup_upd          
                    ,s_tblstat.n_tup_del          
                    ,s_tblstat.n_tup_hot_upd      
                    ,s_tblstat.n_live_tup         
                    ,s_tblstat.n_dead_tup         
                    ,s_tblstat.n_mod_since_analyze
                    ,s_tblstat.n_ins_since_vacuum 
                    ,s_tblstat.last_vacuum        
                    ,s_tblstat.last_autovacuum    
                    ,s_tblstat.last_analyze       
                    ,s_tblstat.last_autoanalyze   
                    ,s_tblstat.vacuum_count       
                    ,s_tblstat.autovacuum_count   
                    ,s_tblstat.analyze_count      
                    ,s_tblstat.autoanalyze_count) $$
    LANGUAGE SQL;
