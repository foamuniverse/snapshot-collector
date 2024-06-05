SELECT datname 
FROM pg_database
WHERE datname NOT IN (
     'postgres'
    ,'template1'
    ,'template0'
    ,'azure_sys'
    ,'azure_maintenance'
    ,'pam-db'
    ,'tmp_replication_check_20221215')
ORDER BY datname
