-- queries.sql

-- 1. Employee names with department names
SELECT e.EmployeeName, d.DepartmentName
FROM Employees e
INNER JOIN Departments d
ON e.DepartmentID=d.DepartmentID;

-- 2. Project names with department names
SELECT p.ProjectName, d.DepartmentName
FROM Projects p
INNER JOIN Departments d
ON p.DepartmentID=d.DepartmentID;

-- 3. Employees with project names
SELECT e.EmployeeName, p.ProjectName
FROM Employees e
JOIN EmployeeProjects ep ON e.EmployeeID=ep.EmployeeID
JOIN Projects p ON ep.ProjectID=p.ProjectID;

-- 4. Employee salary and department location
SELECT e.EmployeeName,e.Salary,d.Location
FROM Employees e
JOIN Departments d ON e.DepartmentID=d.DepartmentID;

-- 5. All employees working on projects
SELECT e.EmployeeName,p.ProjectName
FROM Employees e
JOIN EmployeeProjects ep ON e.EmployeeID=ep.EmployeeID
JOIN Projects p ON ep.ProjectID=p.ProjectID;
