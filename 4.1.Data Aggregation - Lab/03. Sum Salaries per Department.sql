SELECT
	department_id,
	SUM(salary) AS total_salaries
FROM 
	employees
GROUP BY 
	department_id
ORDER BY
	department_id
	
-- Write a query to sum the salaries of employees in each department. Order the information by department_id. 
