CREATE DATABASE Health ;
USE Health ;
CREATE TABLE Hospital (
patient_id INT PRIMARY KEY, AUTO INCREMENT ,
patient_name VARCHAR(60), NOT NULL,
disease VARCHAR (30),
bill_amount INT check bill_amount <=200000)
);
INSERT INTO Hospital (patient_name,disease,bill_amount)
VALUES ('Aanan Verma','High fever',75000),
INSERT INTO Hospital (patient_name,disease,bill_amount)
VALUES ('Arnam Singh','Flu',6000),
INSERT INTO Hospital (patient_name,disease,bill_amount)
VALUES ('Arip Mathur','Appendictics',120000),
SELECT*FROM Hospital WHERE bill_amount>50000;





