SELECT
    e.EmployeeID,
    e.FirstName,
    e.LastName,
    d.DepartmentName,
    prev_salary.Salary AS PreviousSalary,
    curr_salary.Salary AS CurrentSalary
FROM
    Employees e
LEFT JOIN
    Departments d ON e.DepartmentID = d.DepartmentID
LEFT JOIN
    Salaries prev_salary ON e.EmployeeID = prev_salary.EmployeeID
LEFT JOIN
    Salaries curr_salary ON e.EmployeeID = curr_salary.EmployeeID
        AND prev_salary.EffectiveDate = DATE_SUB(curr_salary.EffectiveDate, INTERVAL 1 YEAR)