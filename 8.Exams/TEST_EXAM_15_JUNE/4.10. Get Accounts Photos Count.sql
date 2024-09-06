CREATE OR REPLACE FUNCTION udf_accounts_photos_count(account_username VARCHAR(30))
RETURNS INTEGER AS
$$
	BEGIN
	
		RETURN 
			COUNT(photo_id)
		FROM
			accounts AS a
		JOIN
			accounts_photos AS ap
		ON 
			ap.account_id = a.id
		WHERE
			username = account_username;
		
	END;
$$
	
LANGUAGE plpgsql;	

-- Create a user-defined function named udf_accounts_photos_count(account_username VARCHAR(30)) 
-- that receives an account's username and returns the number of photos the account has uploaded.
-- Submit only your user-defined function to the Judge system.
