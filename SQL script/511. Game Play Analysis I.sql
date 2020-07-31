# Write your MySQL query statement below
SELECT player_id, MIN(event_date) AS first_login
FROM Activity
GROUP BY player_id;

# make groups by 'player_id' and find the min event_date in each group as first login record