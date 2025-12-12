export TWO_TASK=
export ORACLE_SID=FREE
sqlplus / as sysdba
shutdown immediate;
startup mount;
alter database archivelog;
alter database open;
ALTER SYSTEM SET db_recovery_file_dest_size=20G SCOPE=BOTH;
ALTER SYSTEM SET db_recovery_file_dest='/opt/oracle/product/23ai/dbhomeFree/fast_recovery_area' SCOPE=BOTH;
show parameter db_recovery_file;
alter database flashback on;
select flashback_on from v$database;
alter database flashback off;
alter database flashback on;


select systimestamp from dual;

SELECT *
FROM NSEStocks
VERSIONS BETWEEN TIMESTAMP TO_TIMESTAMP_TZ(
  '12-DEC-25 03.35.29.589520000 PM GMT',
  'DD-MON-RR HH.MI.SS.FF9 AM TZR'
) AND SYSTIMESTAMP;
