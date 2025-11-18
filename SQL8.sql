CREATE DATABASE Aeroplane;
USE Aeroplane ;
CREATE TABLE Flights (
flight_id INT PRIMARY KEY AUTO_INCREMENT,
airline VARCHAR(60) NOT NULL, 
source VARCHAR(30),
destination VARCHAR(30),
fare INT CHECK(fare <= 20000)
);
INSERT INTO Flights(airline,destination,fare) VALUES
('Indigo','USA',15000),
('AirIndia','Mumbai',7000);
INSERT INTO Flights(airline,destination,fare) VALUES
('SpiceJet','Amritsar')
SELECT*FROM Flights WHERE source='Delhi' OR fare <5000;
SELECT*FROM Flights WHERE fare >10000;
SELECT DISTINCT airline from Flights;
SELECT*FROM Flights ORDER BY fare DESC limit=1;
SELECT*FROM Flights  WHERE fare BETWEEN 8000 AND 15000 ORDER BY ASC;
SELECT source, COUNT(*)FROM Flights GROUP BY source;
SELECT*FROM Flights ORDER BY fare DESC limit1;
DROP TABLE IF EXISTS Flights;
 