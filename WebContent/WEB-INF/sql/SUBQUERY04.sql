SELECT * FROM Customers
WHERE EXISTS (SELECT now());

SELECT * FROM Customers
WHERE NOT EXISTS (SELECT now());

-- w3schools ex
SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName 
			  FROM Products 
              WHERE Products.SupplierID = Suppliers.supplierID
              AND Price < 20);
              
DESC Suppliers;
SELECT * FROM Suppliers;

SELECT ProductName 
FROM Products 
WHERE Products.SupplierID = 1
AND Price < 20;