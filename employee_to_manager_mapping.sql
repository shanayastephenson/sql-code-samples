SELECT
  e.EmployeeID AS EmployeeID,  
  e.FirstName AS FirstName,
  e.LastName AS LastName,
  d.DepartmentName,
  CONCAT(e.FirstName,' ',e.LastName) AS ManagerName

FROM 
  employees e
LEFT JOIN departments d ON d.DepartmentID = e.DepartmentID
LEFT JOIN managers mgr ON e.DepartmentID = mgr.DepartmentID
LEFT JOIN employees m ON mgr.ManagerID = m.EmployeeID

