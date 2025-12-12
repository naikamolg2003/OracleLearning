SELECT
    *
FROM
    user_sys_privs;

SELECT
    *
FROM
    user_tab_privs;

SELECT
    name,
    value
FROM
    v$diag_info
WHERE
    name IN ( 'Diag Trace', 'Default Trace File', 'Diag Incident', 'Diag Alert' );

SELECT
    p.tracefile
FROM
         v$process p
    JOIN v$session s ON p.addr = s.paddr
WHERE
    s.sid = sys_context('USERENV', 'SID');

SELECT
    *
FROM
    v$session;

SELECT
    sid,
    serial#,
    username,
    machine,
    program,
    module,
    action
FROM
    v$session
WHERE
    username = 'TESTUSER2'
ORDER BY
    logon_time DESC;

BEGIN
    dbms_monitor.session_trace_enable(
        session_id => 16,
        serial_num => 44398,
        waits      => TRUE,
        binds      => TRUE
    );
END;

BEGIN
    dbms_monitor.session_trace_disable(
        session_id => 16,
        serial_num => 44398
    );
END;

SELECT
    sample_time,
    sql_id,
    sql_opname,
    session_state,
    event
FROM
    v$active_session_history
WHERE
    session_id = 16
ORDER BY
    sample_time;