BEGIN
  DBMS_FGA.DROP_POLICY(
    object_schema => 'HR',
    object_name   => 'NSEStocks',
    policy_name   => 'Audit_StockValue'
  );
END;
/
