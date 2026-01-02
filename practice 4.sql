CREATE DATABASE pet_shophouse;
USE pet_shophouse
;
CREATE TABLE pets (
pet_ID INT PRIMARY KEY ,
pet_name VARCHAR(50),
pet_breed VARCHAR(60),
pet_gender VARCHAR(50)
);
INSERT INTO pets(pet_ID , pet_name , pet_breed , pet_gender)VALUES
(101 , 'Tim' , 'Labrador','M'),
(102 , 'Toffee' , 'Tibetin_Mastiff','F'),
(103, 'coke' 'Pug','F');
CREATE TABLE customers (
cust_ID INT PRIMARY KEY,
cust_name VARCHAR(60),
cust_gender VARCHAR(50),
cust_age INT NOT NULL 
);
INSERT INTO customers(cust_ID , cust_name , cust_gender , cust_age)VALUES
(1001 , 'Angad','M' , 19),
(1002 , 'Warisha','F', 20),
(1003 , 'Mehar' , 'F' ,18);
CREATE TABLE products (
product_ID INT PRIMARY KEY,
product_name VARCHAR(50),
product_supplydate DATE 
);
INSERT INTO products(product_ID , product_name , product_supplydate)VALUES
(1111 , 'petcage' , '2020-01-13'),
(1234 , 'cameltoy' , '2021-01-13'),
(1881 , 'calciumbone' , '2025-03-11');
CREATE TABLE Suppliers (
supply_ID INT PRIMARY KEY,
supply_name VARCHAR(60),
supply_date DATE
);
INSERT INTO Suppliers (supply_ID , supply_name , supply_date)VALUES
(1016 , 'petzorg', '2025-01-13'),
(10131 , 'vethomes','2024-05-13'),
(104567 ,'doggie' , '2023-05-10');
CREATE TABLE services (
service_ID INT PRIMARY KEY,
service_name VARCHAR(50),
service_cost INT NOT NULL
);
INSERT INTO services(service_ID , service_name , service_cost)VALUES
(302 , 'Grooming',2500),
(303 , 'Baithing',1500),
(304 , 'VAccinations',1700);
CREATE TABLE bookings (
cust_ID INT NOT NULL,
pet_ID INT NOT NULL,
service_ID INT NOT NULL,
booking_date DATE,
FOREIGN KEY (cust_ID) REFERENCES customers (cust_ID),
FOREIGN KEY (pet_ID) REFERENCES pets (pet_ID),
FOREIGN KEY (services_ID) REFERENCES services(service_ID)
);
INSERT INTO bookings VALUES
(401 , 1001 , 101 , 301 , '2025-02-01'),
(402 , 1002 , 102 , 302 , '2025-02-10'),
(403 , 1003 , 103 , 303 , '2025-02-15');
CREATE TABLE employees (
 emp_id INT PRIMARY KEY,
  emp_name VARCHAR(60),
  emp_role VARCHAR(50),
  emp_salary INT NOT NULL
  );
  CREATE TABLE payments (
  payment_id INT PRIMARY KEY,
  order_id INT,
  payment_date DATE,
  payment_mode VARCHAR(50),
  payment_amount DECIMAL(10,2),
  FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
INSERT INTO payments VALUES
(601, 201, '2024-06-20', 'Credit Card', 1200.00),
(602, 202, '2024-06-25', 'UPI', 800.00),
(603, 203, '2025-01-10', 'Cash', 900.00);
CREATE TABLE pet_food (
  food_id INT PRIMARY KEY,
  food_name VARCHAR(60),
  stock_quantity INT,
  expiry_date DATE
);
INSERT INTO pet_food VALUES
(701, 'Pedigree', 50, '2025-12-01'),
(702, 'Drools', 40, '2025-06-15'),
(703, 'Royal Canin', 30, '2026-02-20');
SELECT*FROM pets ;
SELECT pet_name , pet_breed FROM pets;
SELECT cust_name and cust_gender FROM customers ;
SELECT the product_name , product_supplydate FROM products;
SELECT supply_name , supply_date FROM Suppliers;
SELECT*FROM pets WHERE pet_gender='F';
SELECT*FROM pets WHERE pet_breed='Labrador';
SELECT*FROM customers WHERE cust_age>=18;
SELECT*FROM Suppliers WHERE supply_date>'2024-01-01';
SELECT*FROM products WHERE YEAR(supply_date)=2021;
SELECT cust_name , cust_age
FROM customers
ORDER BY cust_age DESC;
SELECT*FROM pets WHERE pet_name LIKE 'T%';
SELECT pet_gender
FROM pets 
GROUP BY pet_gender;
SELECT*FROM customers WHERE cust_age= (SELECT MIN(cust_age) FROM customers);
SELECT*FROM Suppliers WHERE YEAR(supply_date)=2025;
SELECT*FROM products WHERE product_name LIKE '%toy%';
SELECT COUNT(*) AS total_pets FROM pets;
SELECT*FROM products WHERE product_supplydate <'2023-01-01';
SELECT supply_name FROM Suppliers WHERE supply_id>10130;
SELECT*FROM bookings WHERE booking_date > '2025-01-01';
SELECT MAX(service_cost) AS highest_value;



