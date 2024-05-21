-- Retrieve the names of employees who work in the 'IT' department

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
join departments d 
on e.departmentid = d.departmentid 
where d.departmentid = '1'