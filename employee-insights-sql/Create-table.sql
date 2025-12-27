CREATE TABLE employees(
emp_id SERIAL PRIMARY KEY,
emp_name VARCHAR(50) NOT NULL,
age INT NOT NULL,
department VARCHAR(30) NOT NULL,
salary NUMERIC(10,2) NOT NULL,
joining_date DATE NOT NULL,
Employee_Status VARCHAR(10) NOT NULL
);