CREATE DATABASE Info;
CREATE TABLE employees(
emp_id INT PRIMARY KEY AUTO_INCREMENT, 
name VARCHAR(50), 
department VARCHAR(30),
experience INT,
salary INT,
joining_date DATE 
bonus ROUND(salary*0.10);
);
INSERT INTO employees (name, department, experience, salary INT, salary, joining_date) VALUES
('Arjun','IT','6','60000','2018-3-13','10%'),
('Angad','AI','7','100000','2017-3-13','30%'),
('Priya','Finance','8','70000','2016-4-19','20%'),
SELECT*FROM employees WHERE department ='IT';
UPDATE employees
SET bonus= ROUND(bonus*1.20)
WHERE salary > 70000;
WHERE salary > 70000;
SELECT department, AVG(bonus) AS avg_bonus
FROM employees
GROUP BY department;
HAVING AVG(bonus)>4000;
SELECT department,SUM(salary+bonus)AS total_comp
FROM employees
GROUP BY department;
UPDATE employees
SET salary = ROUND(salary * 1.10)
WHERE department = 'Finance';
SELECT MAX(salary) AS max_salary,
       MIN(salary) AS min_salary
FROM employees;
 SELECT * FROM employees
ORDER BY bonus DESC;
SELECT department, COUNT(*) AS emp_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 1;





