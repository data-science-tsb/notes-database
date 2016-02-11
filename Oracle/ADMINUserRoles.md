# User Roles
* Roles group together a set of privileges
* You can assing roles to users
* (Optional) you can assign a password to a role

## Creating a Role
```sql
CREATE ROLE programmer;
CREATE ROLE secretprogrammer IDENTIFIED BY secretpassword;
```

## Altering a Role
```sql
ALTER ROLE secretprogrammer NOT IDENTIFIED; /* removes the password */
```

## Assigning Privileges to a Role
```sql 
GRANT creae table, create session, create view TO programmer;
```

## Granting Role to Users
```sql
GRANT programmer, role2,..., TO demouser;
```

Sources:
* [Oracle: Predefined Roles](http://docs.oracle.com/cd/B28359_01/network.111/b28531/authorization.htm#i1007401)
* [YouTube: Roles in Oracle](https://www.youtube.com/watch?v=uyg5jz1I7kU)
