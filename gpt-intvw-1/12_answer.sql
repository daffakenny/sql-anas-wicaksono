SELECT D.DepartmentName, AVG(E.Salary) AS AvgSalary
FROM Departments D
JOIN Employees E ON D.DepartmentID = E.DepartmentID
GROUP BY D.DepartmentName;
