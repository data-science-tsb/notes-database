# Searching for a Column
```sql
select *
from information_schema.columns
where table_schema = 'public'
and column_name like  '%related%'
limit 10
```
