CREATE TABLE
	employees(
		"id" serial PRIMARY key NOT NULL ,
		first_name VARCHAR(30),
		last_name VARCHAR(50),
		hiring_date date DEFAULT '2023-01-01',
		salary NUMERIC(10, 2), 
		devices_number INT 
	);

CREATE TABLE
	departments(
		"id" serial PRIMARY key NOT NULL,
		"name" VARCHAR(50),
		code CHAR(3), 
		description text
	);

CREATE TABLE
	issues(
		"id" serial PRIMARY key UNIQUE ,
		description VARCHAR(150),
		date DATE,
		"start" timestamp
	);