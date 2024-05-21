-- List all employees and their departments

select e.firstname 
, e.lastname 
, d.departmentname 
from employees e
join departments d 
on e.departmentid = d.departmentid 