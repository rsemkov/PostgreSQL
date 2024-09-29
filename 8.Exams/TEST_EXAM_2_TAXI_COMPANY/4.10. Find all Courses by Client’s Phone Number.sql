CREATE OR REPLACE FUNCTION fn_courses_by_client(phone_num VARCHAR(20)) 

RETURNS INT AS
$$	
	BEGIN
	
		RETURN 
			COUNT(*)
		FROM
			clients
		JOIN 
			courses
		ON 
			courses.client_id = clients.id
		WHERE
			phone_number = $1;

	END;
$$
	
LANGUAGE plpgsql;

