# Working With JSON Columns

Expanding JSON Arrays
```sql
insert into dbo.demojson(id, myjson, mystr) values 
(1, '[1,2,3,4,5]', 'one'),
(2, '[3,4,5,6,7]', 'two');

select id, my_array.value
from dbo.demojson
cross apply openjson(myjson) my_array
```
