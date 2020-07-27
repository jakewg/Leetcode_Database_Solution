# Write your MySQL query statement below
SELECT product_name, year, price
FROM Sales INNER JOIN product
ON Sales.product_id = Product.product_id;