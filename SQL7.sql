CREATE DATABASE Products;
USE Products;
CREATE TABLE Shop(
item_id INT PRIMARY KEY AUTO_INCREMENT,
item_name  VARCHAR(50) UNIQUE NOT NULL,
supplier VARCHAR (40),
price INT CHECK(price<=20000), 
);
INSERT INTO Shop(item_name,supplier,price) VALUES 
('item1','ABC limited',7500),
('item2','BCD limited',6500)
);
INSERT INTO Shop(item_name,supplier,price) VALUES 
('Item3','ACD Limited',9500)
);
SELECT*FROM Shop WHERE price>15000;
SELECT*FROM Shop WHERE supplier='ABC limited' OR price<5000;
SELECT DISTINCT supplier FROM Shop;
SELECT*FROM Shop ORDER BY price DESC limi1;
SELECT*FROM Shop WHERE items BETWEEN 7000 AND 16000 ORDER BY price;
SELECT supplier, COUNT(*)FROM Shop GROUP BY supplier;
SELECT*FROM Shop ORDER BY price ASC limit1;
DROP TABLE IF EXISTS Shop;


