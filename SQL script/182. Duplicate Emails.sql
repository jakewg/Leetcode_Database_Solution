# Write your MySQL query statement below
SELECT DISTINCT p1.Email 
FROM Person AS p1, Person AS p2
WHERE p1.Id != p2.Id AND p1.Email = p2.Email;

#useing HAVING could be a better method

SELECT Email
FROM Person
GROUP BY Email
HAVING COUNT(Email) > 1;