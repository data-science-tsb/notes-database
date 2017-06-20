# Basic Operations: Postgres

## Create Table
```sql
CREATE TABLE employee (
	employee_name 	varchar(1000),
	street 		varchar(1000),
	city 		varchar(1000)
);

CREATE TABLE works (
	employee_name 	varchar(1000),
	company_name 	varchar(1000),
	salary 		integer
);

CREATE TABLE company (
	company_name 	varchar(1000),
	city 		varchar(1000)
);

CREATE TABLE manages (
	employee_name 	varchar(1000),
	manager_name 	varchar(1000)
);
```

## Insert Data
```sql
INSERT INTO company(company_name, city) VALUES
('Bank of Doom', 'Makati City'),
('Bank of Desparation', 'Makati City'),
('Bank of York', 'New York City');
```
