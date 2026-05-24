

															-- DATA CLEANING AND PRE-CHECKS

-- Checked Duplicates
SELECT employeenumber, COUNT(*) AS duplicate_count
FROM attrition
GROUP BY employeenumber
HAVING COUNT(*) > 1;


-- Checked Null Values in important columns
SELECT *
FROM attrition
WHERE attrition IS NULL
   OR jobrole IS NULL
   OR monthlyincome IS NULL
   OR joblevel IS NULL
   OR overtime IS NULL
   OR yearsatcompany IS NULL;



-- Checked impossible cases

-- Negative Monthly Income OR Negative Tenure OR Negative Age
SELECT *
FROM attrition
WHERE monthlyincome <= 0 OR age < 0 OR yearsatcompany < 0 





															--  DATA ANALYSIS 


-- CALULATED KPI's : Total Employees , Employees Left , Attrition Rate , Highest Attrition job role


CREATE VIEW vw_kpis AS (

SELECT 
	COUNT(DISTINCT employeenumber) AS total_employees,
	COUNT(CASE WHEN attrition = 'Yes' THEN 1 END ) as employees_left,
	COUNT(CASE WHEN attrition = 'Yes' THEN 1 END ) / COUNT(DISTINCT employeenumber):: NUMERIC as attrition_rate,
	
	(SELECT jobrole
	FROM attrition
	GROUP BY jobrole
	ORDER BY COUNT(CASE WHEN attrition = 'Yes' THEN 1 END ) / COUNT(DISTINCT employeenumber)::NUMERIC DESC
	LIMIT 1) AS highest_attrition_role
	
FROM attrition
)

-- CALCULATED  Attrition rate by job role

CREATE VIEW vw_jobrole_attrition AS (

SELECT 
    jobrole,
    COUNT(CASE WHEN attrition = 'Yes' THEN 1 END )/ COUNT(DISTINCT employeenumber)::NUMERIC AS attrition_rate
       

FROM attrition
GROUP BY jobrole

);











--- Calculated attrition by job role and over time

CREATE VIEW vw_jobrole_overtime AS(

SELECT 
	jobrole,
	overtime,
	COUNT(CASE WHEN attrition = 'Yes' THEN 1 END ) / COUNT(DISTINCT employeenumber)::NUMERIC AS attrition_rate
FROM attrition
GROUP BY jobrole , overtime
)




--  Calculated Detail Table :  

CREATE VIEW vw_detail_table AS(

WITH table_metrics AS (

	SELECT
		jobrole,
		COUNT(DISTINCT employeenumber) AS total_employees,
		COUNT(CASE WHEN attrition = 'Yes' THEN 1 END ) AS employees_left,
		COUNT(CASE WHEN attrition = 'Yes' THEN 1 END ) / COUNT(DISTINCT employeenumber):: NUMERIC AS attrition_rate,
		AVG(CASE WHEN attrition = 'Yes' THEN yearsatcompany END) AS avg_tenure,
		SUM(CASE WHEN attrition = 'Yes' THEN (monthlyincome*12) *  CASE WHEN joblevel  = 1 THEN 0.3
																		WHEN joblevel = 2 THEN 0.5
																		WHEN joblevel = 3 THEN 0.8
																		WHEN joblevel = 4 THEN 1.2
																		WHEN joblevel = 5 THEN 1.5
																		END

																		ELSE 0
																		END) AS total_replacement_cost																											
			
	FROM attrition
	GROUP BY jobrole 

)


SELECT *,
	CASE 
    	WHEN attrition_rate >= 0.20 THEN 'High'
    	WHEN attrition_rate >= 0.10 THEN 'Medium'
    	ELSE 'Low' END AS attrition_level
FROM table_metrics

)




--Base Table
SELECT*
FROM attrition


-- FINAL Views

SELECT*
FROM vw_kpis

SELECT*
FROM vw_jobrole_overtime

SELECT*
FROM vw_detail_table


	


