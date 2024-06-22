SELECT
	department_id,
	AVG(salary) AS max_salary
FROM 
	employees
GROUP BY 
	department_id
ORDER BY
	department_id
	
-- Write a query to calculate the average salary in each department. Order the information by department_id. 
