import sqlalchemy
from sqlalchemy import create_engine
from sqlalchemy.sql import text
import os
import sys
from datetime import datetime

query_db_names = open('script/sql/dbnames.sql').read()

sql = open('script/sql/create_snapshot_reader_role.sql').read()
sql = sql.replace('shenanigans', os.environ['TARGET_READ_PASSWORD'])

def main():

    engine = sqlalchemy.create_engine('postgresql:///postgres')

    t = datetime.now()

    with engine.connect() as con:
        rs = con.execute(sqlalchemy.text(query_db_names))
        datnames = [row[0] for row in rs]

    number_of_dbs = len(datnames)
    print(f"Found {number_of_dbs} databases to touch.")

    dbcount   = 0

    for datname in datnames:
        l = datetime.now()
        db_url = f"postgresql:///{datname}"
        dbcount += 1
        print(f"connecting to #{dbcount} database out of {number_of_dbs} with {db_url}")
        engine = sqlalchemy.create_engine(db_url)
        with engine.connect() as con:
            with con.begin():
                con.execute(sqlalchemy.text(sql))
                print(f"time spent in the last loop iteration: {datetime.now()-l}")
                    
    elapsed = datetime.now() - t
    print(f"overall elapsed time: {elapsed}")

if __name__ == '__main__':
    main()
