# Write your MySQL query statement below
SELECT patient_id, patient_name, conditions
FROM Patients
WHERE conditions LIKE '%DIAB1%';

# use wildcard % to search the condition with 'DIAB1'