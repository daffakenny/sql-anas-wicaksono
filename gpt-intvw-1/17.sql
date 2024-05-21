-- Retrieve the names of employees who have not been assigned to any project

select *
from employees e 

select *
from projects p 

select * 
from employeeprojects ep 

select *
from departments d 

select e.firstname 
, e.lastname 
from employees e 
where e.employeeid not in (
select ep.employeeid from employeeprojects ep
)
