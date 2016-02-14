# Stored Routines

**Stored Function**
* A return value is REQUIRED
* Cannot use SQL statements that return result sets
* Cannot use SQl statements that perform transactional commits or rollbacks
* invoked with SELECT

**Stored Procedure**
* invoked with CALL

Note:
* Because you are executing a statement with the regular **;** delimiter, you have to declare a different delimiter when you are using the command line to create a stored procedure:
```sql
DELIMITER $$ -- declare $$ as the new delimiter for the session
CREATE PROCEDURE my_procedure (IN con char(20))
BEGIN
  SELECT * FROM my_table;
END $$ -- this acts as a delimiter 

DELIMITER ; -- dont forget to revert it back to default
```
