SELECT 
	employee_id, CONCAT(e.first_name, ' ', e.last_name) AS full_name, 
	d.department_id, d.name AS department_name
	FROM
		departments AS d
		JOIN employees AS e
		ON e.employee_id = d.manager_id
ORDER BY e.employee_id
LIMIT 5

-- Write a query to retrieve information about the managers – employee_id, full_name, deparment_id, 
-- and department_name. Select the first 5 managers ordered by employee_id. Submit your queries in 
-- the Judge system.
