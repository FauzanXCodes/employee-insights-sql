-------------- D.Real-World Business Questions ---------
-- 1.Which department has the highest average salary?
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department
ORDER BY average_salary DESC
LIMIT 1;

-- 2.Who is the longest-serving employee?
SELECT * from employees
ORDER BY joining_date ASC LIMIT 1;

--3.Which employees are overpaid or underpaid?
SELECT 
    emp_name, 
    department, 
    salary,
    AVG(salary) OVER(PARTITION BY department) as dept_avg,
    CASE 
        WHEN salary > (AVG(salary) OVER(PARTITION BY department) * 1.2) THEN 'Overpaid'
        WHEN salary < (AVG(salary) OVER(PARTITION BY department) * 0.8) THEN 'Underpaid'
        ELSE 'Fairly Paid'
    END as status
FROM employees;