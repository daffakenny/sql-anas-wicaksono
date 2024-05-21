-- List the departments and the number of employees in each department

select *
from employees e 

select *
from projects p 

select * 
from employeeprojects ep 

select *
from departments d 

select d.departmentname 
, count(e.employeeid)
from departments d 
left join employees e 
on d.departmentid = e.departmentid 
group by d.departmentname 