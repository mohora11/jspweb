use test;

SELECT * FROM Customers;

SELECT Country FROM Customers
UNION
SELECT Country FROM Suppliers
ORDER BY Country;
