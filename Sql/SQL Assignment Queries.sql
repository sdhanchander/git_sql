-- Question 1:

CREATE DATABASE [HOTEL MANAGEMENT SYSTEM];

USE [HOTEL MANAGEMENT SYSTEM];

CREATE TABLE [customers] (
  [Cust_ID] int NOT NULL PRIMARY KEY,
  [Cust_Name] varchar(255),
  [Cust_City] varchar(255),
  [Cust_RoomNo] int,
  [CheckIn_Time] datetime
);

INSERT INTO [customers] ([Cust_ID], [Cust_Name], [Cust_City], [Cust_RoomNo], [CheckIn_Time]) 
VALUES 
(1, 'John Doe', 'New York', 101, '2022-01-01 12:00:00'),
(2, 'Jane Smith', 'Los Angeles', 202, '2022-02-14 15:30:00'),
(3, 'Michael Johnson', 'Chicago', 303, '2022-03-22 10:45:00'),
(4, 'Amanda Lee', 'Houston', 404, '2022-04-10 08:15:00'),
(5, 'David Wang', 'San Francisco', 505, '2022-05-18 16:20:00');

SELECT * FROM [customers];


-- Question 2:

-- Print distinct cities
SELECT DISTINCT City FROM customers;

-- Print count of distinct cities
SELECT COUNT(DISTINCT City) FROM customers;

-- Retrieve the least and highest number of quantities bought by the user from the OrderDetails table
SELECT MIN(Quantity) AS Least_Quantity, MAX(Quantity) AS Highest_Quantity FROM order_details;

-- Retrieve the total and average quantities bought by the user from the OrderDetails table
SELECT SUM(Quantity) AS Total_Quantity, AVG(Quantity) AS Avg_Quantity FROM OrderDetails;

-- Retrieve the name of the product which is present at the 5th position till the 15th position from the Products table
SELECT ProductName FROM products LIMIT 4, 10;

-- Retrieve all columns of data from the Suppliers table where SupplierName contains 'A' at the second position
SELECT * FROM suppliers WHERE SupplierName LIKE '_A%';

-- Customers who don't stay in USA or Cananda
SELECT * FROM customers WHERE Country NOT IN ('USA', 'Canada');

-- orders placed between the year 2020 to 2021 in descending order
SELECT * FROM order_details WHERE YEAR(OrderDate) BETWEEN 2020 AND 2021 ORDER BY OrderDate DESC;

-- distinct city and their counts
SELECT City, COUNT(*) AS City_Count FROM customers GROUP BY City;

-- employees excluding the first names, “Sanjay” and “Sonia”
SELECT * FROM employees WHERE FirstName NOT IN ('Sanjay', 'Sonia');

-- Duplicate a table similar to the Suppliers table
CREATE TABLE SupplierDetail LIKE Suppliers;

-- Delete customer details whose country is Venezuela
DELETE FROM Customer WHERE Country = 'Venezuela';
SELECT * FROM Customer;
