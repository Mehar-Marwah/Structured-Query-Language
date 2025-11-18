CREATE DATABASE SHOP;
USE SHOP ;
CREATE TABLE Orders (
order_id PRIMARY KEY, AUTO_INCREMENT,
customer_name(VARCHAR 50) NOT NULL ,
product VARCHAR(40), 
amount (int check amount<=50000)
);
INSERT INTO Orders(customer_name,product,amount)
VALUES('Jane','Laptop',35000);
INSERT INTO Orders(customer_name,product,amount)
VALUES ('Mitch','Headphones',2500);
INSERT INTO Orders (customer_name,product,amount)
VALUES('Shea','Speakers',4500);
SELECT*FROM Orders WHERE amount>10000;
SELECT*FROM Orders WHERE product='Laptop'OR amount<5000;
SELECT distinct product FROM Orders;
SELECT*FROM Orders ORDER BY amount DESC LIMIT 2;
SELECT*FROM Orders WHERE amount BETWEEN 8000 AND 30000 ORDER BY amount;
SELECT*FROM Orders ORDER BY amount DESC LIMIT 1;
DROP TABLE IF EXISTS Orders;

