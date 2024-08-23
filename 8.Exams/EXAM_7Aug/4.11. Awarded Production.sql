CREATE OR REPLACE PROCEDURE udp_awarded_production(production_title VARCHAR(70)) 

AS 
$$

BEGIN

	UPDATE 
		actors 
	SET
		awards = awards + 1
	WHERE
		id IN 
			(SELECT
				a.id
			FROM
				productions AS p
			JOIN
				productions_actors AS pa
			ON 
				pa.production_id = p.id
			JOIN 
				actors AS a
			ON 
				a.id = pa.actor_id
			WHERE
				title = production_title);
		
END;
$$

LANGUAGE plpgsql;

-- Create a stored procedure udp_awarded_production with the following parameters:
-- ⦁	production_title(VARCHAR(70))
-- The procedure udp_awarded_production(production_title VARCHAR(70)) receives a production title 
-- as input and modifies the associated actors' number of awards by increasing them by 1 if the title exists.
