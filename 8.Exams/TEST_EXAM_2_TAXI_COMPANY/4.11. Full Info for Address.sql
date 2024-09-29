CREATE TABLE IF NOT EXISTS search_results (
	id SERIAL PRIMARY KEY,
	address_name VARCHAR(100),
	full_name VARCHAR(50),
	level_of_bill VARCHAR,
	make VARCHAR(20),
	condition CHAR,
	category_name VARCHAR(10)
);

CREATE OR REPLACE PROCEDURE sp_courses_by_address(address_name VARCHAR(100)) 

AS $$
BEGIN

    TRUNCATE TABLE search_results;

    INSERT INTO search_results (
		address_name,
		full_name ,
		level_of_bill,
		make,
		condition,
		category_name
	)
	
    SELECT
		ad.name,
		full_name,
		CASE
			WHEN bill <= 20 THEN 'Low'
			WHEN bill BETWEEN 21 AND 30 THEN 'Medium'
			ELSE 'High'
		END level_of_bill,
		make,
		condition,
		cat.name
	FROM
		addresses AS ad
	JOIN
		courses AS co
	ON 
		co.from_address_id = ad.id
	JOIN
		clients AS cl
	ON 
		cl.id = co.client_id
	JOIN 
		cars AS ca
	ON 
		ca.id = co.car_id
	JOIN 
		categories AS cat
	ON 
		cat.id = ca.category_id
	WHERE
		ad.name = address_name
	ORDER BY
		make, full_name;
		
	
END;
$$

LANGUAGE plpgsql;


-- You are required to create a stored procedure named sp_courses_by_address() that accepts a parameter "address_name" 
-- with a maximum length of 100. The procedure should retrieve information about addresses that match the given "address_name". 
-- The extracted data should include the "address_name", client's "full_name", the "level_of_bill" 
-- (categorized as 'Low' if the bill is less than or equal to 20, 'Medium' if it is less than or equal to 30, and 'High' otherwise), 
-- the car's "make" and "condition", and the "category_name". The results should be ordered by the car's "make". 
-- In case there are multiple courses made by the same car, the results should be further sorted by the client's "full_name".
