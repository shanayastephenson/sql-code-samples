SELECT 
  employeeID, 
  firstName,
  lastName,
  projects.projectName AS projectName
FROM employees
LEFT JOIN projects ON projects.DepartmentID = employees.DepartmentID
WHERE projectName IS NOT NULL
