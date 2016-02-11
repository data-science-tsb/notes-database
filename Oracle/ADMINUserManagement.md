# User Management

## Create User
```sql
CREATE USER demouser
 IDENTIFIED BY demopassword;
```

## Resetting the User Password
```cmd
//NOTE: run the process locally, as the system administrator
cmd> sqlplus /nolog 

sqlplus> CONNECT / as sysdba

sqlplus> ALTER USER sys IDENTIFIED BY newpassword; 
```

## Alter User
```sql
ALTER USER demouser DEFAULT TABLESPACE mydatabase;

ALTER USER demouser QUOTA 100m ON mydatabase; 
```

Sources:
* [Oracle: Managing Users](https://docs.oracle.com/cd/B10501_01/server.920/a96521/users.htm)
* [Oracle: Alter User](http://docs.oracle.com/cd/B19306_01/server.102/b14200/statements_4003.htm)
