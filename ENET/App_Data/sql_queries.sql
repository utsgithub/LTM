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


/**** Total Costs by Engineer Report 1 **

SELECT userName AS 'engineer', SUM(labour) AS 'hours', SUM(cost) AS 'cost' 
FROM view_detail_interventions 
WHERE status='Completed' 
GROUP BY userName 
ORDER BY userName ASC;
**/

/**** Average Costs by Engineer Report 2 **

SELECT userName AS 'engineer', AVG(labour) AS 'hours', AVG(cost) AS 'cost' 
FROM view_detail_interventions 
WHERE status='Completed' 
GROUP BY userName 
ORDER BY userName ASC;
**/

/**** Costs by District Report 3 **

-- Total Cost/Hours by District
SELECT Districts, SUM(labour) as labour, SUM(cost) as cost
FROM view_detail_interventions 
WHERE status='Completed'
GROUP BY Districts
ORDER BY Districts ASC;

-- Grand Total
SELECT sum(labour) as labour, sum(cost) as cost
FROM view_detail_interventions
WHERE status='Completed';
**/

/**** Monthly Costs for District Report 4 **

** The following statement shows all the Districts and the Months together in one table grouped
** by the month and district.

SELECT Districts, MAX(datename(month, iDate)) as 'month', SUM(labour) as labour, SUM(cost) as cost
FROM view_detail_interventions
WHERE status='completed'
GROUP BY Districts, DATEPART(month, iDate)
ORDER BY DATEPART(month, iDate) asc;

** The following statement shows just the months for a specific district, this is for the user-selectable
** district data, need to figure out which one to use.

SELECT MAX(datename(month, iDate)) as 'month', SUM(labour) as labour, SUM(cost) as cost
FROM view_detail_interventions
WHERE status='completed' and Districts_ID=4
GROUP BY DATEPART(month, iDate)
ORDER BY DATEPART(month, iDate) asc;
**/