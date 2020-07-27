# Write your MySQL query statement below
SELECT Students.id, Students.name
FROM Students LEFT OUTER JOIN Departments
 ON Departments.id = Students.department_id
WHERE Departments.name IS NULL;