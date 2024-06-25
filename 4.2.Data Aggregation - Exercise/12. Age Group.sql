SELECT
	CASE
		WHEN age >= 0 AND age <= 10 THEN '[0-10]'
		WHEN age >= 11 AND age <= 20 THEN '[11-20]'
		WHEN age >= 21 AND age <= 30 THEN '[21-30]'
		WHEN age >= 31 AND age <= 40 THEN '[31-40]'
		WHEN age >= 41 AND age <= 50 THEN '[41-50]'
		WHEN age >= 51 AND age <= 60 THEN '[51-60]'
		WHEN age >= 61 THEN '[61+]'
		END age_group,
	COUNT(age) as count
FROM
	wizard_deposits
GROUP BY
	age_group
ORDER BY
	age_group ASC
	

-- Create a SQL query that groups the wizards from the "wizard_deposits" table into age 
-- 	groups of '[0-10]', '[11-20]', '[21-30]', '[31-40]', '[41-50]', '[51-60]', and '[61+]'. 
-- 	The query should count the number of wizards in each "age_group" and display the results 
-- 	in ascending order based on the "age_group".

