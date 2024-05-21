-- List the managers and the number of employees they manage

select *
from employees e 

select *
from projects p 

select * 
from employeeprojects ep 

select *
from departments d 

select m.firstname 
, m.lastname 
, count(e.employeeid) managedEmployee
from employees e 
join employees m 
on e.managerid = m.employeeid 
group by m.firstname , m.lastname 