SELECT E.FirstName, E.LastName
FROM Employees E
JOIN EmployeeProjects EP ON E.EmployeeID = EP.EmployeeID
JOIN Projects P ON EP.ProjectID = P.ProjectID
WHERE P.ProjectName = 'Project Alpha';
