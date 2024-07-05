SELECT
	e.employee_id, CONCAT(e.first_name, ' ', e.last_name) AS full_name,  
	p.project_id, p.name AS project_name 
FROM 
	employees AS e
	JOIN employees_projects AS ep
	ON ep.employee_id = e.employee_id
		JOIN projects AS p
		ON p.project_id = ep.project_id
WHERE p.project_id = 1

-- Write a query to get information about the employees, working on a project with id = 1. 
-- Display employee_id, full_name,  project_id, and project_name for all employees engaged with the project. 
