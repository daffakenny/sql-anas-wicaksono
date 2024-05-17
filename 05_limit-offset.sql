-- select 5 address
select *
from address a 
limit 5;

-- select last 5 address, print DESC
select *
from address a 
order by address_id desc
limit 5;

-- first 5 row after 5 rows (row 6-10)
select *
from address a 
limit 5
offset 5;