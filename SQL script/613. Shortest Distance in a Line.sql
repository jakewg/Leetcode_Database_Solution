# Write your MySQL query statement below
SELECT MIN(ABS(pt1.x - pt2.x)) AS shortest
FROM point AS pt1, point AS pt2
WHERE pt1.x != pt2.x;

# use funtion MIN and ABS to calculate the difference in two point table