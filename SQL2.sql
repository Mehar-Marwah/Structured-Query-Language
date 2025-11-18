CREATE DATABASE COLLEGE;
USE COLLEGE ;
CREATE TABLE Course(
course_id INT PRIMARY KEY AUTO_INCREMENT,
course_name VARCHAR(100)UNIQUE,
duration INT NOT NULL,
fees INT DEFAULT 20000 CHECK (fees<=100000)
);
INSERT INTO Course(Course_name,duration,fees)
VALUES('Python Basics','6',40000);
INSERT INTO Course(course_name,duration,fees)
VALUES('Data Science','12',80000 );
INSERT INTO Course(course_name,duration,fees)
VALUES('BCA','13','90000' );
SELECT*FROM course
WHERE fees <500000 OR duration>12;
SELECT distinct duration FROM  Course;
SELECT*FROM Course 
ORDER by fees DESC
LIMIT 1;
SELECT*FROM Course 
WHERE duration BETWEEN 6 AND 12
ORDER by fees;
SELECT*FROM Course
ORDER by fees ASC;
LIMIT 1;




