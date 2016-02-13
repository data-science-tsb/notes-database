
# Stored Procedure

## Basic Syntax
```plsql
DECLARE
  -- this is a comment
  message VARCHAR2(20):= 'Hello World';
BEGIN
  /*
   * another comment
   */
  dbms_output.put_line(message);
END;
```

Note:
* Setup the server to write the output on SQLPLUS if you want to see the output in the command line
```
set serveroutput on size 30000;
```
* Add a **/** in a new line to run the procedure on SQLPLUS
```plsql
.
.
END;
/
```

Sources:
* [TutorialsPoint: PL/SQL Basic Syntax](http://www.tutorialspoint.com/plsql/plsql_basic_syntax.htm)
