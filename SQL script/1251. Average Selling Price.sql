# Write your MySQL query statement below
SELECT product_id, ROUND(SUM(sale)/SUM(units), 2) AS average_price
FROM (
    SELECT
        p.product_id AS product_id,
        p.price * u.units  AS sale,
        u.units AS units
    FROM Prices AS p JOIN UnitsSold AS u
    ON p.product_id = u.product_id
    WHERE u.purchase_date BETWEEN p.start_date AND p.end_date
) AS d
GROUP BY product_id;

# first, we need a table 'd' which contain the sale income. This sale income should be the price times units in every period. Then, we sum up sale and units by product_id to get average_price