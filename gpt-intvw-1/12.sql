-- Find the average salary of employees in each department

select *
from employees e 

select *
from projects p 

select * 
from employeeprojects ep 

select *
from departments d 

select d.departmentname 
, avg(salary) as "avgSalary"
from employees e 
inner join departments d 
on e.departmentid = d.departmentid 
group by d.departmentname 