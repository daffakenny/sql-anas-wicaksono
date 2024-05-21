-- Retrieve the details of projects that ended in 2022

select *
from employees e 

select *
from projects p 

select * 
from employeeprojects ep 

select *
from departments d 

select *
from projects p 
where enddate between '2022-01-01' and '2022-12-31'

select *
from projects p 
where extract (year FROM enddate) = 2022;