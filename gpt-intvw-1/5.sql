-- Find employees who have worked on 'Project Alpha'.

select *
from employees e 

select *
from projects p 

select * 
from employeeprojects e 

select e.firstname 
, e.lastname 
, p.projectname 
from employees e 
left join employeeprojects ep
on e.employeeid = ep.employeeprojectid 
left join projects p 
on p.projectid = ep.projectid 
where ep.projectid = 1;