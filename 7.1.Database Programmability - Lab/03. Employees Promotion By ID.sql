CREATE OR REPLACE PROCEDURE sp_increase_salary_by_id(id INTEGER)

AS 
$$
	BEGIN
		UPDATE 
			employees
		SET 
			salary = salary * 1.05
		WHERE 
			employee_id = id;
	END; 
$$

LANGUAGE plpgsql;

-- Create a stored procedure(transaction) sp_increase_salary_by_id(id) that increases a given employee's salary 
-- (by id as a parameter) by 5%. Consider that you cannot promote an employee who doesn't exist – if that happens, 
-- no changes to the database shall be made. 
