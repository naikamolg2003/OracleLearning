BEGIN
  DBMS_FGA.DROP_POLICY(
    object_schema => '<schema_name>',
    object_name   => '<table_or_view_name>',
    policy_name   => '<policy_name>'
  );
END;
/
