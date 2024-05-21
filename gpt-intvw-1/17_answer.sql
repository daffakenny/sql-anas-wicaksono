SELECT FirstName, LastName
FROM Employees
WHERE EmployeeID NOT IN (SELECT EmployeeID FROM EmployeeProjects);
