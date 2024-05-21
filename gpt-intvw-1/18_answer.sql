SELECT M.FirstName, M.LastName, COUNT(E.EmployeeID) AS ManagedEmployees
FROM Employees E
JOIN Employees M ON E.ManagerID = M.EmployeeID
GROUP BY M.FirstName, M.LastName;
