-------------- B. Salary Analysis (Business-Focused)----------------

-- 1.Identify employees earning between 45,000 and 70,000.
SELECT * from employees
WHERE salary BETWEEN 45000 and 70000;

-- 2.List employees earning above the company average salary
SELECT * from employees
WHERE salary > (SELECT AVG(salary) FROM employees) ;

--3.Find employees earning less than 50,000 for salary review.
SELECT * from employees
WHERE salary < 50000;

-- 4.Display the top highest-paid employees.
SELECT * from employees
ORDER BY salary DESC;

--5.Identify departments where employees earn more than 80,000.
SELECT department from employees
WHERE salary >80000;