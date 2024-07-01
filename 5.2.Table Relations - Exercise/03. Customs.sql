CREATE TABLE passports (
	id INT GENERATED ALWAYS AS IDENTITY (START WITH 100 INCREMENT BY 1) PRIMARY KEY,
	nationality VARCHAR(50)
);

INSERT INTO passports(nationality)
	VALUES 
	('N34FG21B'), 
	('K65LO4R7'), 
	('ZE657QP2');
	
CREATE TABLE people (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	salary DECIMAL(10, 2),
	passport_id INT,
	FOREIGN KEY(passport_id)
		REFERENCES passports(id)
	);

INSERT INTO people(first_name, salary, passport_id)
	VALUES 
	('Roberto', 43300.0000, 101),
	('Tom', 56100.0000, 102),
	('Yana', 60200.0000, 100)


-- "id" column that is an automatically incremented SERIAL PRIMARY KEY;
-- "first_name" column with a maximum length of 50 characters and is of type VARCHAR;
-- "salary" column which is specified to the second decimal place and has a maximum of 10 digits;
-- "passport_id" column of type INT which is established as a FOREIGN KEY constraint 
-- 	and refers to the "id" column of the "passports" table.
