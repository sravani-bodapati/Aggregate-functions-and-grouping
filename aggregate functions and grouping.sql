-- create a database empolyees
create database employees;
use employees;

-- Create a simple employees table
CREATE TABLE employees (
  id INTEGER auto_increment PRIMARY KEY,
  name TEXT,
  department TEXT,
  salary INTEGER
);

-- Insert sample data
INSERT INTO employees (name, department, salary) VALUES
('Alice', 'HR', 50000),
('Bob', 'IT', 60000),
('Charlie', 'HR', 55000),
('David', 'IT', 65000),
('Eva', 'Finance', 70000),
('Frank', 'Finance', NULL);

-- 1. Total salary per department
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

-- 2. Average salary per department
SELECT department, ROUND(AVG(salary), 2) AS avg_salary
FROM employees
GROUP BY department;

-- 3. Count of employees per department
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;

-- 4. Departments with total salary greater than 100000
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING total_salary > 100000;

-- 5. Highest salary per department
SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department;

-- 6. Count of employees with known salary
SELECT department, COUNT(salary) AS with_salary
FROM employees
GROUP BY department;

-- 7. Count of distinct departments
SELECT COUNT(DISTINCT department) AS unique_departments
FROM employees;


