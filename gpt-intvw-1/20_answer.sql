SELECT SUM(P.Budget) AS TotalBudget
FROM Projects P
JOIN EmployeeProjects EP ON P.ProjectID = EP.ProjectID
JOIN Employees E ON EP.EmployeeID = E.EmployeeID
JOIN Departments D ON E.DepartmentID = D.DepartmentID
WHERE D.DepartmentName = 'Finance';
