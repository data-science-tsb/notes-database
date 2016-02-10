# Database (Tablespace)

## Creating a Database
```sql
CREATE TABLESPACE mydatabase /* replace with the database name */
  DATAFILE 'mydatabase.dat'
  SIZE 10M
  AUTOEXTEND ON NEXT 10M
  MAXSIZE 200M;
```

Sources:
* [Oracle Docs](https://docs.oracle.com/cd/B19306_01/server.102/b14200/statements_7003.htm)
