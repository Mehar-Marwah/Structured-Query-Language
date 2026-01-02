CREATE DATABASE assig3;
USE assig3;
CREATE TABLE Department (
dept_id INT PRIMARY KEY ,
dept_name VARCHAR(30)
);
INSERT INTO Department (dept_id , dept_name)VALUES
(101 , "Arts"),
(102 , "Maths"),
(103 , "Science");
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
(3 , "Mahi" , 80000 , 103);
SELECT*FROM Employee ;
SELECT*FROM Employee ORDER BY salary ASC;
UPDATE Employee SET salary=99000 WHERE emp_name="Mahi";
SELECT E.emp_name , D.dept_name 
FROM Department as D
inner join Employee as E
ON D.dept_id=E.dept_id;
DELETE  FROM Employee WHERE dept_id=101;

