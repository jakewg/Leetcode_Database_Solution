# Write your MySQL query statement below
SELECT * 
FROM Users
WHERE mail REGEXP '^[a-z|A-Z]+[a-zA-Z0-9\\._-]*@leetcode.com$';

# practic the regular expression with sql