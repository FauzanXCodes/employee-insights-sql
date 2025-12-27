-------------- C.Update & Maintenance Scenarios ----------

-- 1.Update salary by 10% for IT employees.
UPDATE employees
SET salary = salary * 1.10
WHERE department = 'IT';

-- 2.Change employee status to Resigned for a specific employee.
UPDATE employees
SET employee_status = 'Resigned'
WHERE emp_id = 5;

-- 3.Correct an incorrectly entered salary
UPDATE employees
SET salary = 70000
WHERE emp_id = 4;