CREATE TABLE employees_projects (
	id INT PRIMARY KEY,
	employee_id INT,
	project_id INT,
	
	FOREIGN KEY (employee_id) REFERENCES employees(id),
	FOREIGN KEY (project_id) REFERENCES projects(id)
);

-- Create a table named "employees_projects" with columns for "id", "employee_id", and "project_id". 
-- The "employee_id" column should have a foreign key constraint that references the "id" column in 
-- the "employees" table, and the "project_id" column should have a foreign key constraint that references 
-- the "id" column in the "projects" table.
