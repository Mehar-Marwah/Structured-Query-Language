CREATE DATABASE Shelf;
USE Shelf ;
CREATE TABLE Library2 (
book_id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(100) UNIQUE NOT NULL ,
author VARCHAR(50) ,
price int default 1300
);
INSERT INTO Library2(title,author) VALUES
 ('Orchids','O Henry');
 INSERT INTO Library2(title,author,price) VALUES
('The Green Room','Ruskin Bond',450),
('The Seceret Seven','William',350);
INSERT INTO Library2 (title,author) VALUES 
('The Arabian Nights','Robert Irwin');

SELECT*FROM Library2 WHERE price>1000;
SELECT*FROM Library2 WHERE author='R.K Narayan' OR price<500;
SELECT DISTINCT author FROM Library2;
SELECT*FROM Library2 ORDER BY price DESC LIMIT 2;
SELECT*FROM Library2 WHERE price BETWEEN 400 AND 1000 ORDER BY price;
SELECT*FROM Library2 ORDER BY price ASC limit 2;
SELECT book_id, author, COUNT(*) FROM Library2 GROUP BY book_id,author;




