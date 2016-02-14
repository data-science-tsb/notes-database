# Stored Routines

**Stored Function**
* A return value is REQUIRED
* Cannot use SQL statements that return result sets
* Cannot use SQl statements that perform transactional commits or rollbacks
* invoked with SELECT

**Stored Procedure**
* invoked with CALL
```sql
CALL demo_procedure(1,2,3);
```
* has IN, OUT, INOUT parameters
```sql
CREATE PROCEDURE demo_procedure(IN p1 INT, OUT p2 INT, INOUT p3 INT)
BEGIN
  SELECT first_name INTO p2 FROM person WHERE id = p1 ; -- IN and OUT 
  SELECT first_name INTO p3 FROM PERSON WHERE id = p3; -- INOUT 
END
```

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
