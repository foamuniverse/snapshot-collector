CREATE SCHEMA IF NOT EXISTS snapshot;

CREATE OR REPLACE FUNCTION snapshot.s_db() 
RETURNS SETOF void AS $$ 
    -- Dummy function; wants snapshots of pg_database_pg_stat_database.
    SELECT 1
$$ LANGUAGE SQL;
