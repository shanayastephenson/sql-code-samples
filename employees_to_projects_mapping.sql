SELECT 
employeeID, 
firstName,
lastName,
projects.projectName AS projectName the
FROM employees
LEFT JOIN projects ON projects.DepartmentID = employees.DepartmentID
WHERE projectName IS NOT NULL
