-- List all employees who do not have a manager

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
, e.managerid 
from employees e 
where e.managerid isnull 