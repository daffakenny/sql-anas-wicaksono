-- List the employees along with the projects they are associated with

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
, p.projectname 
from employees e 
join employeeprojects ep
on e.employeeid = ep.employeeid 
join projects p 
on ep.projectid  = p.projectid ;