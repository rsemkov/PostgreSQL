SELECT
	c.name AS country_name,
	COUNT(c.name) AS productions_count,
	COALESCE(AVG(budget), 0) AS avg_budget
FROM 
	countries AS c
JOIN
	productions AS p
ON 
	p.country_id = c.id
JOIN
	productions_info AS pi
ON 
	pi.id = p.production_info_id
GROUP BY
	country_name
HAVING
	COUNT(c.name) >= 1
ORDER BY
	COUNT(c.name) DESC,
	c.name ASC;

-- Extract from the database the name of a country, the number of productions associated with it, 
-- and the average production budget per country. 
-- Display zeros when there are no related data for average budgets.
	
-- Filter only those countries that have at least one production.
	
-- Order the results by number of productions descending and then by country name ascending.
-- Required Columns
-- ⦁	name as country_name
-- ⦁	productions_count
-- ⦁	avg_budget
