CREATE DATABASE SCHOOL;
USE SCHOOL;
CREATE TABLE Teacher(
teacher_id INT PRIMARY KEY AUTO_INCREMENT,
teacher_name VARCHAR(60) NOT NULL,
subject (VARCHAR(30)),
salary(INT Check salary<=80000)
);
INSERT INTO Teacher (teacher_name,subject,salaray) VALUES
('Ms Khanak','Maths',68000)
('Ms Riya','Artificial Intelligence', 80000)
('Ms Siya','Structured Query Language',75000)
INSERT INTO Teacher (teacher_name,subject) VALUES 
('Ms Maydeep','Physics')
SELECT*FROM Teacher WHERE subject='Maths' OR Salary>50000;
SELECT Distinct subjects FROM Tacher;
SELECT*FROM Teacher ORDER BY salary DESC LIMIT1 ;
SELECT*FROM Teacher WHERE salary between 20000 AND 70000 ORDER BY salary  ASC LIMIT1;
SELECT*FROM Teacher ORDER BY salary ASC Limit1;
DROP TABLE IF Exists Teacher;




