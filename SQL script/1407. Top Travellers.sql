# Write your MySQL query statement below
SELECT 
    u.name, 
    IFNULL(SUM(r.distance), 0) AS travelled_distance
FROM
    Users AS u 
    LEFT OUTER JOIN Rides AS r
    ON u.id = r.user_id
GROUP BY 
    r.user_id
ORDER BY 
    travelled_distance DESC, u.name;

# the function 'IFNULL' can provide the number to a NULL record or you can use the CASE WHEN ELSE END

CASE 
		WHEN r.distance IS NULL SUM(r.distance)
		ELSE 0
END