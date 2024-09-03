CREATE OR REPLACE FUNCTION fn_feedbacks_for_product(product_name VARCHAR(25)) 

RETURNS TABLE(
	customer_id INT, 
	customer_name VARCHAR(75), 
	feedback_description VARCHAR(255), 
	feedback_rate NUMERIC(4, 2)
	) AS
	
$$
BEGIN
	
    RETURN
		QUERY
    SELECT 
		f.customer_id,
		first_name,
		f.description,
		rate
    FROM
		feedbacks AS f
	JOIN
		customers AS c
	ON 
		c.id = f.customer_id
	JOIN
		products AS p
	ON 
		p.id = f.product_id
	WHERE
		product_name = p.name
	ORDER BY
		customer_id ASC;
	
END;
$$
	
LANGUAGE 'plpgsql';

-- You have been tasked with creating a user-defined function named fn_feedbacks_for_product() that retrieves customer feedback 
-- for a specific product. This function is designed to accept the product's name as a parameter 
-- ("product_name" of type VARCHAR(25)) and should return a table with the following columns:
	
-- ⦁	"customer_id" (INT) - representing the unique identifier of the customer who provided the feedback;
-- ⦁	"customer_name" (VARCHAR(75)) - denoting the first name of the customer who supplied the feedback;
-- ⦁	"feedback_description" (VARCHAR(255)) - describing the content or text of the feedback;
-- ⦁	"feedback_rate" (NUMERIC(4, 2)) - indicating the numerical rating provided in the feedback;
	
-- The results should be ordered by customer "id" in ascending order.
