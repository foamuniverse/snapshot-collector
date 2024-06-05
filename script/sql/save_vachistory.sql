CREATE SCHEMA IF NOT EXISTS snapshot;

CREATE OR REPLACE FUNCTION snapshot.s_vac() 
RETURNS SETOF void AS $$ 
    SELECT 1
    -- Dummy function; good idea to monitor autovacuum stats. Not exactly sure yet what to collect here.
$$ LANGUAGE SQL;
