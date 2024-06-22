SELECT
	department_id,
	COUNT(department_id) AS employee_count
FROM 
	employees
GROUP BY 
	department_id
ORDER BY
	department_id
	
-- Write a query to count the number of employees in each department by id. 
-- Order the information by department_id. 
