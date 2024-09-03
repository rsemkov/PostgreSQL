CREATE OR REPLACE PROCEDURE sp_customer_country_name(IN customer_full_name VARCHAR(50), OUT country_name VARCHAR(50)) 

AS 
$$

BEGIN

	SELECT
		co.name
	INTO
		country_name
	FROM
		countries AS co
	JOIN
		customers AS cu
	ON 
		co.id = cu.country_id
	WHERE
		customer_full_name = CONCAT(first_name, ' ', last_name);
		
END;
$$

LANGUAGE plpgsql;

-- Your final task is to create a stored procedure called sp_customer_country_name() designed to retrieve the country 
-- name associated with a given customer's full name. This procedure will take the customer's full name as input 
-- ("customer_full_name" of type VARCHAR(50)) and extract the name of the country from which they originate 
-- ("country_name" of type VARCHAR(50)).
