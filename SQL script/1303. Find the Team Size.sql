# Write your MySQL query statement below
SELECT e.employee_id, t.team_size
FROM Employee AS e LEFT OUTER JOIN (
    SELECT team_id, COUNT(team_id) AS team_size
    FROM Employee
    GROUP BY team_id
) AS t
ON e.team_id = t.team_id
ORDER BY employee_id;

# This method follow the mindful logic. The first step is to create a table 't' with two field 'team_id' and 'team_size' and the next is to join table t to the original table 'Employee'.