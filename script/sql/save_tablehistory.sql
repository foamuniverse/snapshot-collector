CREATE SCHEMA IF NOT EXISTS snapshot;

CREATE OR REPLACE FUNCTION snapshot.s_tables() 
RETURNS SETOF void AS $$ 
    -- Dummy function; wants join of pg_class with pg_tables (I think).
    SELECT 1
$$ LANGUAGE SQL;
