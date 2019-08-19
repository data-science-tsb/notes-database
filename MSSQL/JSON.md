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

More complex stuffs... like anti-joins
```sql
select distinct bad_bic from

(
    select top (10000)
    id, json_value(batch_contents.value, '$.Cdtr.Nm') customer, json_value(batch_contents.value, '$.CdtrAgt.FinInstnId.BICFI') bad_bic
    from [dbo].[REQUEST_HISTORY]
    cross apply openjson([REQUEST_BODY], '$.FIToFICstmrCdtTrf.CdtTrfTxInf') batch_contents
    where 
    method = 'POST'
    and RESPONSE_BODY like '%One or more transactions have an invalid creditor BIC%'
) bad

left join 

(
    select distinct
    json_value(batch_contents.value, '$.CdtrAgt.FinInstnId.BICFI') good_bic
    from [dbo].[REQUEST_HISTORY]
    cross apply openjson([REQUEST_BODY], '$.FIToFICstmrCdtTrf.CdtTrfTxInf') batch_contents
    where
    method = 'POST'
    and REQUEST like '%/api/v2/outward_message/create'
    and RESPONSE_STATUS = 200
) good 

on good.good_bic = bad.bad_bic

where good_bic is null
order by bad_bic asc
```
