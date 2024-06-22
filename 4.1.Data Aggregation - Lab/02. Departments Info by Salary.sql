SELECT
	department_id,
	COUNT(salary) AS employee_count
FROM 
	employees
GROUP BY 
	department_id
ORDER BY
	department_id
	
-- Write a query to count the number of employees in each department by salary. 
-- Order the information by department_id. Submit your queries.
-- Note, that the NULL values for salary will be ignored.
