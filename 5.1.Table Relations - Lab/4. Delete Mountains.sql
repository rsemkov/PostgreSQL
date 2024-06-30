CREATE TABLE mountains (
		id SERIAL PRIMARY KEY,
	name VARCHAR(50)
);

CREATE TABLE peaks(
		id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	mountain_id INT,
	CONSTRAINT fk_mountain_id
 		FOREIGN KEY(mountain_id)
			REFERENCES mountains(id)
			ON DELETE CASCADE
);


-- Write a query to create a one-to-many relationship between 
-- table mountains (id, name) and table peaks (id, name, mountain_id). 
-- Set a Foreign Key Constraint (fk_mountain_id) and On Delete rule.
-- When a mountain is removed from the database, all its peaks are also deleted.
