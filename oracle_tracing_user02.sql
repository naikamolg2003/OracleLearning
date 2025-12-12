drop user testuser2 cascade;
-- 1. Create the user
CREATE USER testuser2
IDENTIFIED BY testuser2
DEFAULT TABLESPACE users
TEMPORARY TABLESPACE temp
ACCOUNT UNLOCK;

-- 2. Grant basic privileges
GRANT CREATE SESSION TO testuser2;

-- 3. Grant RESOURCE role
GRANT RESOURCE TO testuser2;

-- 4. Give unlimited quota on USERS tablespace
ALTER USER testuser2 QUOTA UNLIMITED ON users;
