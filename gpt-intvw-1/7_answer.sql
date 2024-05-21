SELECT D.DepartmentName, COUNT(E.EmployeeID) AS EmployeeCount
FROM Departments D
LEFT JOIN Employees E ON D.DepartmentID = E.DepartmentID
GROUP BY D.DepartmentName;
