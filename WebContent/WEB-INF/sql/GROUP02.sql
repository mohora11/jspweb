SELECT * FROM Customers;

SELECT COUNT(*) FROM Customers;

SELECT Country, COUNT(*) cnt 
FROM Customers
GROUP BY Country
ORDER BY cnt DESC;


