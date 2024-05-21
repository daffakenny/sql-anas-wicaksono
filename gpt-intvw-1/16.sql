-- Find the department with the highest number of projects

select *
from employees e 

select *
from projects p 

select * 
from employeeprojects ep 

select *
from departments d 

select d.departmentname 
, count (d.departmentname)
from departments d 
join employees e 
on e.departmentid = d.departmentid 
join employeeprojects ep
on e.employeeid = ep.employeeid 
group by d.departmentname 
order by d.departmentname desc
limit 1
