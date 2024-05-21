SELECT DISTINCT M.FirstName, M.LastName
FROM Employees E
JOIN Employees M ON E.ManagerID = M.EmployeeID;
