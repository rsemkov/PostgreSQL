CREATE OR REPLACE FUNCTION fn_count_employees_by_town(town_name VARCHAR(20)) 

RETURNS INT AS
$$	
	BEGIN
	
		RETURN
			COUNT(e.employee_id)
		FROM
			towns AS t
		JOIN
			addresses AS a
		ON 
			a.town_id = t.town_id
		JOIN
			employees AS e
		ON 
			e.address_id = a.address_id
		WHERE
			t.name = town_name;

	END;
$$
	
LANGUAGE plpgsql;

-- Create a function fn_count_employees_by_town(town_name) that accepts town_name  VARCHAR(20)
-- 	as a parameter and returns the count of employees living there. 
