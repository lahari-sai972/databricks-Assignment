
-- DATBRICKS SQL ASSIGNMENT
-- Table Name: Employees


-- ===========================
-- SELECT
-- ===========================

-- 1. Display all employee details.
SELECT * FROM Employees;

-- 2. Display only employee names and salaries.
SELECT emp_name, salary
FROM Employees;

-- 3. Display employee names and departments.
SELECT emp_name, department
FROM Employees;

-- 4. Display all employees from the IT department.
SELECT *
FROM Employees
WHERE department = 'IT';

-- 5. Display employee names and experience.
SELECT emp_name, experience
FROM Employees;

-- ===========================
-- WHERE
-- ===========================

-- 1. Salary greater than 70000
SELECT *
FROM Employees
WHERE salary > 70000;

-- 2. Employees working in Hyderabad
SELECT *
FROM Employees
WHERE city = 'Hyderabad';

-- 3. Experience less than 4 years
SELECT *
FROM Employees
WHERE experience < 4;

-- 4. Employees from Finance department
SELECT *
FROM Employees
WHERE department = 'Finance';

-- 5. Salary equal to 52000
SELECT *
FROM Employees
WHERE salary = 52000;

-- ===========================
-- GROUP BY
-- ===========================

-- 1. Total salary department-wise
SELECT department, SUM(salary) AS total_salary
FROM Employees
GROUP BY department;

-- 2. Average salary in each department
SELECT department, AVG(salary) AS average_salary
FROM Employees
GROUP BY department;

-- 3. Count employees in each city
SELECT city, COUNT(*) AS employee_count
FROM Employees
GROUP BY city;

-- 4. Maximum salary in each department
SELECT department, MAX(salary) AS maximum_salary
FROM Employees
GROUP BY department;

-- 5. Minimum experience department-wise
SELECT department, MIN(experience) AS minimum_experience
FROM Employees
GROUP BY department;

-- ===========================
-- HAVING
-- ===========================

-- 1. Departments having more than 3 employees
SELECT department, COUNT(*) AS total_employees
FROM Employees
GROUP BY department
HAVING COUNT(*) > 3;

-- 2. Average salary greater than 60000
SELECT department, AVG(salary) AS average_salary
FROM Employees
GROUP BY department
HAVING AVG(salary) > 60000;

-- 3. Cities having more than 2 employees
SELECT city, COUNT(*) AS employee_count
FROM Employees
GROUP BY city
HAVING COUNT(*) > 2;

-- 4. Total salary greater than 200000
SELECT department, SUM(salary) AS total_salary
FROM Employees
GROUP BY department
HAVING SUM(salary) > 200000;

-- 5. Maximum salary above 90000
SELECT department, MAX(salary) AS maximum_salary
FROM Employees
GROUP BY department
HAVING MAX(salary) > 90000;

-- ===========================
-- TOP (Databricks uses LIMIT)
-- ===========================

-- 1. Top 5 highest paid employees
SELECT *
FROM Employees
ORDER BY salary DESC
LIMIT 5;

-- 2. Top 3 employees with highest experience
SELECT *
FROM Employees
ORDER BY experience DESC
LIMIT 3;

-- 3. Top 2 salaries from Finance department
SELECT *
FROM Employees
WHERE department = 'Finance'
ORDER BY salary DESC
LIMIT 2;

-- 4. Top 4 employees from Hyderabad
SELECT *
FROM Employees
WHERE city = 'Hyderabad'
LIMIT 4;

-- 5. Highest salary employee
SELECT *
FROM Employees
ORDER BY salary DESC
LIMIT 1;

-- ===========================
-- DISTINCT
-- ===========================

-- 1. Distinct department names
SELECT DISTINCT department
FROM Employees;

-- 2. Distinct city names
SELECT DISTINCT city
FROM Employees;

-- 3. Distinct salary values
SELECT DISTINCT salary
FROM Employees;

-- 4. Distinct department and city combinations
SELECT DISTINCT department, city
FROM Employees;

-- 5. Distinct experience values
SELECT DISTINCT experience
FROM Employees;

-- ===========================
-- COMPARISON OPERATORS
-- ===========================

-- 1. Salary >= 80000
SELECT *
FROM Employees
WHERE salary >= 80000;

-- 2. Experience <= 3
SELECT *
FROM Employees
WHERE experience <= 3;

-- 3. Salary <> 45000
SELECT *
FROM Employees
WHERE salary <> 45000;

-- 4. Salary < 50000
SELECT *
FROM Employees
WHERE salary < 50000;

-- 5. Experience > 5
SELECT *
FROM Employees
WHERE experience > 5;

-- ===========================
-- LOGICAL OPERATORS
-- ===========================

-- 1. IT department AND salary > 70000
SELECT *
FROM Employees
WHERE department = 'IT'
AND salary > 70000;

-- 2. Hyderabad OR Bangalore
SELECT *
FROM Employees
WHERE city = 'Hyderabad'
OR city = 'Bangalore';

-- 3. HR department AND experience < 3
SELECT *
FROM Employees
WHERE department = 'HR'
AND experience < 3;

-- 4. Salary > 60000 OR experience > 6
SELECT *
FROM Employees
WHERE salary > 60000
OR experience > 6;

-- 5. NOT from Sales department
SELECT *
FROM Employees
WHERE department <> 'Sales';

-- ===========================
-- IN AND NOT IN
-- ===========================

-- 1. Hyderabad or Mumbai
SELECT *
FROM Employees
WHERE city IN ('Hyderabad', 'Mumbai');

-- 2. IT or Finance
SELECT *
FROM Employees
WHERE department IN ('IT', 'Finance');

-- 3. NOT Chennai or Pune
SELECT *
FROM Employees
WHERE city NOT IN ('Chennai', 'Pune');

-- 4. Salary IN list
SELECT *
FROM Employees
WHERE salary IN (45000, 75000, 91000);

-- 5. Department NOT IN HR and Sales
SELECT *
FROM Employees
WHERE department NOT IN ('HR', 'Sales');

-- ===========================
-- BETWEEN
-- ===========================

-- 1. Salary between 50000 and 80000
SELECT *
FROM Employees
WHERE salary BETWEEN 50000 AND 80000;

-- 2. Experience between 3 and 6
SELECT *
FROM Employees
WHERE experience BETWEEN 3 AND 6;

-- 3. Employee ID between 105 and 112
SELECT *
FROM Employees
WHERE emp_id BETWEEN 105 AND 112;

-- 4. Salary NOT between 40000 and 60000
SELECT *
FROM Employees
WHERE salary NOT BETWEEN 40000 AND 60000;

-- 5. Experience between 2 and 4
SELECT *
FROM Employees
WHERE experience BETWEEN 2 AND 4;

-- ===========================
-- LIKE OPERATOR
-- ===========================

-- 1. Names start with R
SELECT *
FROM Employees
WHERE emp_name LIKE 'R%';

-- 2. Names end with a
SELECT *
FROM Employees
WHERE emp_name LIKE '%a';

-- 3. Names contain v
SELECT *
FROM Employees
WHERE emp_name LIKE '%v%';

-- 4. City starts with B
SELECT *
FROM Employees
WHERE city LIKE 'B%';

-- 5. Department ends with s
SELECT *
FROM Employees
WHERE department LIKE '%s';
