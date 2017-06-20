# Basic Operations: Postgres

## Create Table
```sql
create table employee (employee_name varchar(1000),street varchar(1000),city varchar(1000));

create table works (employee_name varchar(1000),company_name varchar(1000),salary integer);

create table company (company_name 	varchar(1000),city varchar(1000));

create table manages (
	employee_name 	varchar(1000),
	manager_name 	varchar(1000)
);
```
