SELECT number, street
FROM addresses
WHERE (id >= 50 AND id <= 100) OR number < 1000;

-- Write an SQL query to select "number" and "street" from the "addresses" 
-- table where "id" is BETWEEN 50 and 100 OR "number" is less than 1000.