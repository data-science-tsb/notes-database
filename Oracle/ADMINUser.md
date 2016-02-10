# User Administration

## Create User
```sql
CREATE USER demouser
 IDENTIFIED BY demopassword;
 
GRANT CREATE SESSION TO demouser;
```

# Resetting the User Password
```cmd
//NOTE: run the process locally, as the system administrator

cmd> sqlplus /nolog 

sqlplus> CONNECT / as sysdba

sqlplus> ALTER USER sys IDENTIFIED BY newpassword; 
```
