DROP USER testuser1 CASCADE;
-- 1. Create the user
CREATE USER testuser1 IDENTIFIED BY testuser1
    DEFAULT TABLESPACE users
    TEMPORARY TABLESPACE temp
    ACCOUNT UNLOCK;

-- 2. Grant basic privileges
GRANT
    CREATE SESSION
TO testuser1;

-- 3. Grant RESOURCE role
GRANT resource TO testuser1;

-- 4. Give unlimited quota on USERS tablespace
ALTER USER testuser1
    QUOTA UNLIMITED ON users;

GRANT SELECT ON v_$session TO testuser1;

GRANT SELECT ON v_$diag_info TO testuser1;

GRANT SELECT ON v_$process TO testuser1;

GRANT select_catalog_role TO testuser1;

GRANT
    ALTER SESSION,
    ALTER SYSTEM, select_catalog_role TO testuser1;

GRANT EXECUTE ON dbms_monitor TO testuser1;

GRANT SELECT ON v_$active_session_history TO testuser1;

