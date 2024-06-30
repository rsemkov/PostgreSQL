SELECT 
	*
FROM 
	departments
JOIN 
	employees 
ON 
	departments.id = employees.department_id;

-- Write a SQL query to join all columns from the "departments" table and the "employees" table where the 
-- "id" column in the "departments" table matches the "department_id" column in the "employees" table. 
-- The result set should include all columns from both tables.