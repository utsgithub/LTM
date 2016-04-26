/** Useful SQL Queries for Project Database Solutions **/

--SELECT c.ID, c.name, c.descriptive, d.Districts
--FROM clients C INNER JOIN districts d on C.district_id = d.ID;

--SELECT c.ID, c.name, c.descriptive, d.Districts
--FROM clients C INNER JOIN districts d on C.district_id = d.ID
--WHERE c.ID = 3;

--SELECT * FROM intervention WHERE clients_id = 1 AND user_id = 1;
--SELECT * FROM interventionTypes;

--SELECT * FROM eng_list_client WHERE clients_ID = 1;
--SELECT * FROM eng_detail_intervention WHERE clients_id = 2;
--SELECT * FROM eng_detail_intervention WHERE clients_id = 1 AND user_id = 1;

--select * from view_client_list;
--select * from view_detail_interventions;


/** Total Costs by Engineer SQL Select Statement for Report 1
SELECT userName AS 'engineer', max(labour) AS 'hours', max(cost) AS 'cost' 
FROM view_detail_interventions 
WHERE status='Completed' 
GROUP BY userName 
ORDER BY userName ASC;
**/

/** **/
--SELECT userName AS 'engineer', avg(labour) AS 'hours', avg(cost) AS 'cost' 
--FROM view_detail_interventions 
--WHERE status='Completed' 
--GROUP BY userName 
--ORDER BY userName ASC;
