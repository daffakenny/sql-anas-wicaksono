SELECT D.DepartmentName, COUNT(EP.ProjectID) AS ProjectCount
FROM Departments D
JOIN Employees E ON D.DepartmentID = E.DepartmentID
JOIN EmployeeProjects EP ON E.EmployeeID = EP.EmployeeID
GROUP BY D.DepartmentName
ORDER BY ProjectCount DESC
LIMIT 1;
