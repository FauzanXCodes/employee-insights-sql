-------------A. Employee Overview & Filtering--------------
-- 1.List all employees who are currently Active.
SELECT * FROM employees
WHERE Employee_Status = 'Active';

-- 2.Find employees working in the IT department.
SELECT * from employees
WHERE department = 'IT';

-- 3.Show employees whose salary is greater than 60,000.
SELECT * from employees
WHERE salary > 600000;

-- 4.Retrieve employees who joined the company after 2022.
SELECT * from employees
WHERE joining_date >= '2022-01-01' AND joining_date < '2023-01-01';

-- 5.List employees whose names start with the letter ‘A’.
SELECT * from employees
WHERE emp_name LIKE 'A%';

-- 6.Find employees whose names end with ‘n’.
SELECT * from employees
WHERE emp_name LIKE '%n';

-- 7.Display employees who belong to HR, Finance, or IT departments.
SELECT * from employees
WHERE department IN ('HR','Finance','IT');