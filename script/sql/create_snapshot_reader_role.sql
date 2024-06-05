drop role if exists snapshot_reader;
create role snapshot_reader with login password 'shenanigans';
grant pg_read_all_stats to snapshot_reader;
