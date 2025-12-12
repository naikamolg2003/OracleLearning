BEGIN
    FOR t IN (
        SELECT
            table_name
        FROM
            all_tables
        WHERE
            owner = 'TESTUSER1'
    ) LOOP
        dbms_fga.add_policy(
            object_schema   => 'TESTUSER1',
            object_name     => t.table_name,
            policy_name     => 'Audit_' || t.table_name,
            audit_condition => NULL,
            audit_column    => NULL,
            statement_types => 'SELECT, INSERT, UPDATE, DELETE'
        );
    END LOOP;
END;
/
