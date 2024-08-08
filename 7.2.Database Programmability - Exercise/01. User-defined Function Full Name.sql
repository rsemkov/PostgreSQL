CREATE OR REPLACE FUNCTION fn_full_name(first_name VARCHAR, last_name VARCHAR)

RETURNS VARCHAR AS

$$	
DECLARE 
    full_name VARCHAR;

BEGIN
    full_name := INITCAP(CONCAT(first_name, ' ', last_name));
RETURN 
    full_name;               
END;
$$

LANGUAGE plpgsql;

-- Create a PostgreSQL function named "fn_full_name" that takes two arguments: "first_name" and "last_name". 
-- The function should return the "full_name" as a single string, with the first name and last name 
-- capitalized and separated by a space. If either "first_name" or "last_name" is null, 
-- the function should return null or only the non-null name capitalized.
