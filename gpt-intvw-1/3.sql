-- Retrieve the names of employees who are managers

select *
from employees e 

select distinct m.firstname 
, m.lastname 
from employees e 
join employees m
on e.managerid = m.employeeid