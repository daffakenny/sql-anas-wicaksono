-- equal to =
-- shows active customer's last name

select c.last_name 
from customer c 
where c.active  = 1;

-- not equal to !=
-- shows customer's address not from Guangdong

select *
from address a 
where district != 'Guangdong';

-- greater than >
-- shows film's title and desc. where runtime is more than 60 minutes; ascending

select f.title, f.description, f.length 
from film f
where f.length > 60
order by f.length ;

-- greater or equal to >=
-- shows film's title and desc. where runtime is more or equal to 90 minutes; descending

select f.title, f.description, f.length 
from film f
where f.length >= 90
order by f.length desc ;