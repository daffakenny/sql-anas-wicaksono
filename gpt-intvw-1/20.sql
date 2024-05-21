-- Find the total budget of projects handled by the 'Finance' department'

select *
from employees e 

select *
from projects p 

select * 
from employeeprojects ep 

select *
from departments d 

select sum(p.budget) totalBudget_FinanceDept
from projects p 
join employeeprojects ep
on p.projectid = ep.projectid 
join employees e 
on ep.employeeid = e.employeeid 
join departments d 
on e.departmentid = d.departmentid 
where d.departmentname = 'Finance'


SELECT SUM(P.Budget) AS TotalBudget
FROM Projects P
JOIN EmployeeProjects EP ON P.ProjectID = EP.ProjectID
JOIN Employees E ON EP.EmployeeID = E.EmployeeID
JOIN Departments D ON E.DepartmentID = D.DepartmentID
WHERE D.DepartmentName = 'Finance';
