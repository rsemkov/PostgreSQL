DROP TABLE IF EXISTS gift_recipients CASCADE;
CREATE TABLE gift_recipients (
	id SERIAL PRIMARY KEY,
	name VARCHAR,
	country_id INT,
	gift_sent BOOL DEFAULT false
);


INSERT INTO gift_recipients (
	name,
	country_id,
	gift_sent
)

	SELECT
		CONCAT(first_name, ' ', last_name),
		country_id,
		CASE
			WHEN country_id IN (7, 8, 14, 17, 26) THEN true
			ELSE false
		END gift_sent
	FROM
		customers
