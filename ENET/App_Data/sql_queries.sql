-- Useful SQL Queries for Project Database Solution
SELECT c.ID, c.name, c.descriptive, d.Districts
FROM clients C INNER JOIN districts d on C.district_id = d.ID;