# Write your MySQL query statement below
SELECT s.name AS name
FROM
    salesperson as s
    LEFT OUTER JOIN orders AS o
    ON s.sales_id = o.sales_id
    LEFT OUTER JOIN company AS c
    ON o.com_id = c.com_id
GROUP BY s.name
HAVING SUM(IF(c.name = 'RED', 1, 0)) = 0;

# using the method with 'NOT IN'

SELECT s.name AS name
FROM salesperson AS s
WHERE s.sales_id NOT IN (
    SELECT sales_id
    FROM orders AS o LEFT OUTER JOIN company AS c
     ON o.com_id = c.com_id
    WHERE c.name = 'RED'
);