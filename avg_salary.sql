SELECT
    e.EmployeeID,
    e.FirstName,
    e.LastName,
    d.DepartmentName,
    AVG(s.Salary) AS AverageSalary
FROM
    Employees e
LEFT JOIN
    Departments d ON e.DepartmentID = d.DepartmentID
LEFT JOIN
    Salaries s on e.EmployeeID = s.EmployeeID

GROUP BY 
    e.EmployeeID,
    e.FirstName,
    e.LastName,
    d.DepartmentName;
