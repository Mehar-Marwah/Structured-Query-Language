CREATE DATABASE assigg4;
USE assigg4;
CREATE TABLE Department (
dept_id INT PRIMARY KEY ,
dept_name VARCHAR(30)
);
INSERT INTO Department (dept_id , dept_name)VALUES
(101 , "Arts"),
(102 , "Maths"),
(103 , "Science"),
(104 , "Commerce"),
(105 , "Eco");
CREATE TABLE Employee (
emp_id INT PRIMARY KEY ,
emp_name VARCHAR(40),
salary INT NOT NULL , 
dept_id INT ,
FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);
INSERT INTO Employee(emp_id , emp_name , salary , dept_id)VALUES
(1 , "Karan" , 90000 , 101),
(2 , "Ratan" , 95000 , 102),
(3 , "Mahi" , 80000 , 103),
(4 , "Paras", 75000 , 104),
(5 , "Warisha" , 80000 , 105);
SELECT*FROM Employee WHERE salary>(SELECT AVG(salary) FROM Employee);
SELECT emp_name 
FROM Employee
WHERE dept_id=(
SELECT dept_id FROM  Employee WHERE emp_name="Ratan"
);
SELECT emp_name
FROM Employees
WHERE dept_id NOT IN (
  SELECT dept_id FROM Departments
);
SELECT MAX(salary)
FROM Employees
WHERE salary < (SELECT MAX(salary) FROM Employees);
SELECT emp_name
FROM Employees
WHERE age > ANY (
  SELECT age FROM Employees
  WHERE dept_id = (
    SELECT dept_id FROM Departments WHERE dept_name = 'Sales'
  )
);
