CREATE DATABASE Assig;
USE Assig;
CREATE TABLE Student (
stud_id INT PRIMARY KEY ,
stud_name VARCHAR(30),
stud_marks INT NOT NULL 
);
INSERT INTO Student (stud_id , stud_name , stud_marks)VALUES 
(1 , "Karan" , 98),
(2 , "Ratan" , 99),
(3 , "Paras" , 97);
ALTER TABLE Student ADD city VARCHAR(30);
TRUNCATE TABLE Student;
DROP TABLE Student;