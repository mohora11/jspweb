SELECT CustomerName,City FROM Customers;
SELECT * FROM Customers;
/*
여러줄 주석
*/
-- 한 줄 주석 ctrl + /
SELECT City FROM Customers; -- 91
SELECT * FROM Categories; -- 8
SELECT * FROM Customers; -- 91
SELECT * FROM OrderDetails; -- 518
SELECT * FROM Orders; -- 196
SELECT * FROM Products; -- 77
SELECT * FROM Shippers; -- 3
SELECT * FROM Suppliers; -- 29

SELECT * FROM Customers
WHERE Country = "Mexico";
