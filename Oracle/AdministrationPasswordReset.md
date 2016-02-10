# Resetting the password
```cmd
cmd> sqlplus /nolog
sqlplus> CONNECT / as sysdba
sqlplus> ALTER USER sys IDENTIFIED BY newpassword; 
```
