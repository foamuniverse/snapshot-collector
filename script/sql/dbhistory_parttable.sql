create table snapshot.dbhistory (like pg_stat_database, snapshot_time timestamptz not null default now(), instance_name text, dbsize bigint) partition by range (snapshot_time);
CREATE INDEX ON dbhistory (instance_name, datname);
CREATE INDEX ON dbhistory (snapshot_time);
CREATE TABLE snapshot.dbhistory_y2024m02 PARTITION OF snapshot.dbhistory FOR VALUES FROM ('2024-02-01') TO ('2024-03-01');
CREATE TABLE snapshot.dbhistory_y2024m03 PARTITION OF snapshot.dbhistory FOR VALUES FROM ('2024-03-01') TO ('2024-04-01');
CREATE TABLE snapshot.dbhistory_y2024m04 PARTITION OF snapshot.dbhistory FOR VALUES FROM ('2024-04-01') TO ('2024-05-01');
CREATE TABLE snapshot.dbhistory_y2024m05 PARTITION OF snapshot.dbhistory FOR VALUES FROM ('2024-05-01') TO ('2024-06-01');
