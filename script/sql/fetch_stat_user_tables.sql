CREATE SCHEMA IF NOT EXISTS snapshot;

-- We gotta create a type here with column defs to use for
-- a return type from the function to get named key/value pairs.
-- Dropping first is necessary to avoid errors when trying to create.
DROP TYPE IF EXISTS snapshot.stat_usrtbl CASCADE;
CREATE TYPE snapshot.stat_usrtbl AS (
            schemaname               name
            ,relname                 name
            ,seq_scan                bigint
            ,seq_tup_read            bigint
            ,idx_scan                bigint
            ,idx_tup_fetch           bigint
            ,n_tup_ins               bigint
            ,n_tup_upd               bigint
            ,n_tup_del               bigint
            ,n_tup_hot_upd           bigint
            ,n_live_tup              bigint
            ,n_dead_tup              bigint
            ,n_mod_since_analyze     bigint
            ,n_ins_since_vacuum      bigint
            ,last_vacuum             timestamp with time zone
            ,last_autovacuum         timestamp with time zone
            ,last_analyze            timestamp with time zone
            ,last_autoanalyze        timestamp with time zone
            ,vacuum_count            bigint
            ,autovacuum_count        bigint
            ,analyze_count           bigint
            ,autoanalyze_count       bigint);

-- This is needed to change the return type.
DROP FUNCTION IF EXISTS snapshot.fetch_stat_user_tables();

CREATE OR REPLACE FUNCTION snapshot.fetch_stat_user_tables() 
RETURNS SETOF snapshot.stat_usrtbl AS $$ 
        SELECT
            schemaname          
            ,relname            
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
            ,autoanalyze_count
        FROM pg_stat_user_tables $$
    LANGUAGE SQL;
