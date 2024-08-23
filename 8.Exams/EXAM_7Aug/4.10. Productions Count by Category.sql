CREATE OR REPLACE FUNCTION udf_category_productions_count(category_name VARCHAR(50))
	
RETURNS TEXT
AS $$
	
DECLARE
    production_count INTEGER;
	
BEGIN

    SELECT 
		COUNT(*)
    INTO 
		production_count
    FROM 
		categories AS c
    JOIN 
		categories_productions AS cp 
	ON 
		c.id = cp.category_id
    JOIN 
		productions AS p 
	ON 
		cp.production_id = p.id
    WHERE 
		c.name = category_name;

	RETURN FORMAT('Found %s productions.', production_count);
	
END;
$$ 

LANGUAGE plpgsql;

-- Create a user-defined function named udf_category_productions_count(category_name VARCHAR(50)) 
-- that receives a category name and returns the total number of associated productions in a string format:
-- ⦁	"Found {count} productions."
