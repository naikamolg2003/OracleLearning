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

GRANT audit_admin TO testuser1;

GRANT select_catalog_role TO testuser1;

GRANT SELECT ON dba_audit_policies TO testuser1;

