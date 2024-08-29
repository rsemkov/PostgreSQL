UPDATE 
    products
SET 
    price = price * 1.10
WHERE 
    id IN (
        SELECT 
            product_id
        FROM 
            feedbacks
        WHERE 
            rate > 8
        );
		
-- In the task ahead, write an SQL query to increase "price" by 10% for products with a "rate" above 8.
