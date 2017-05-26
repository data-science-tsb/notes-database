# Connecting to a MySQL Server

```ssh
mysql --host=127.0.0.1 --user=myname --password=mypass mydb

SHOW GRANTS FOR 'root'@'localhost';
SELECT User,Host FROM mysql.user ORDER BY User,Host;
GRANT ALL PRIVILEGES on hive.* to 'hive'@'%' IDENTIFIED BY "password"; 
```
