# Write your MySQL query statement below
SELECT c.country_name, (
    CASE 
        WHEN AVG(w.weather_state) <= 15 THEN 'Cold'
        WHEN AVG(w.weather_state) >= 25 THEN 'Hot'
        ELSE 'Warm'
    END
) AS weather_type
FROM Weather AS w LEFT OUTER JOIN
    Countries AS c
    ON w.country_id = c.country_id
WHERE w.day LIKE '2019-11%'
GROUP BY w.country_id;

# be careful to the requirement on Nov 2019