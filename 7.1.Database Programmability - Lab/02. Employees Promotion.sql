CREATE OR REPLACE PROCEDURE sp_increase_salaries(department_name VARCHAR)

AS 
$$
	BEGIN
		UPDATE 
			employees
		SET 
			salary = salary * 1.05
		WHERE 
			department_id = 
				(SELECT department_id FROM departments WHERE name = department_name);

	END; 
$$

LANGUAGE plpgsql;


-- Create a stored procedure sp_increase_salaries(department_name) to increase the salary of all employees working 
-- at a given department (provided as a parameter). Increase salaries by 5%. 
