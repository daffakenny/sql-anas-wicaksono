-- Retrieve the names and roles of employees working on 'Project Beta'

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
, ep.role
from employees e 
left join employeeprojects ep
on e.employeeid = ep.employeeid 
left join projects p 
on ep.projectid  = p.projectid 
where p.projectname = 'Project Beta'

