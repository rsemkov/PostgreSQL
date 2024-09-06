CREATE OR REPLACE PROCEDURE udp_modify_account(address_street VARCHAR(30), address_town VARCHAR(30)) 

AS 
$$

BEGIN
	
	UPDATE 
		accounts
	SET 
		job_title = CONCAT('(Remote) ', job_title)
    WHERE 
		id IN (
	        SELECT 
				a.id
	        FROM 
				addresses AS ad
	        JOIN 
				accounts AS a 
            ON 
                ad.account_id = a.id
	        WHERE 
				ad.street = address_street AND ad.town = address_town
	    );
			
END;
$$

LANGUAGE plpgsql;

-- Create a stored procedure udp_modify_account with the following parameters:
-- ⦁	address_street
-- ⦁	address_town
-- The procedure udp_modify_account(address_street VARCHAR(30), address_town VARCHAR(30)) receives a 
-- street and a town as inputs and modifies the associated account's job title by appending the string "(Remote) " 
-- at the beginning of the current job title if the account exists.
