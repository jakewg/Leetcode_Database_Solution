# Write your MySQL query statement below
SELECT Customers.Name AS Customers
FROM Customers LEFT OUTER JOIN Orders
 ON Customers.Id = Orders.CustomerId
WHERE Orders.Id IS NULL;

# another method is using 'NOT IN'

# Write your MySQL query statement below
SELECT Customers.Name AS Customers
FROM Customers
WHERE Customers.Id NOT IN (
    SELECT customerid FROM orders
);