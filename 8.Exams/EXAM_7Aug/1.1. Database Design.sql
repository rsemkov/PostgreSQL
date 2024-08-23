DROP TABLE IF EXISTS countries CASCADE;
CREATE TABLE countries (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) UNIQUE NOT NULL,
	continent VARCHAR(40) NOT NULL,
	currency VARCHAR(5)
);

DROP TABLE IF EXISTS categories CASCADE;
CREATE TABLE categories (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) UNIQUE NOT NULL
);

DROP TABLE IF EXISTS actors CASCADE;
CREATE TABLE actors (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	birthdate DATE NOT NULL,
	height INTEGER,
	awards INTEGER CHECK(awards >= 0) DEFAULT 0 NOT NULL,
	
	country_id INTEGER NOT NULL,
	
	CONSTRAINT fk_actors_countries
	FOREIGN KEY(country_id)
	REFERENCES countries(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

DROP TABLE IF EXISTS productions_info CASCADE;
CREATE TABLE productions_info (
	id SERIAL PRIMARY KEY,
	rating DECIMAL(4, 2) NOT NULL,
	duration INTEGER CHECK(duration > 0) NOT NULL,
	budget DECIMAL(10, 2),
	release_date DATE NOT NULL,
	has_subtitles BOOLEAN DEFAULT FALSE NOT NULL,
	synopsis TEXT
);

DROP TABLE IF EXISTS productions CASCADE;
CREATE TABLE productions (
	id SERIAL PRIMARY KEY,
	title VARCHAR(70) UNIQUE NOT NULL,
	
	country_id INTEGER NOT NULL,
	production_info_id INTEGER UNIQUE NOT NULL,

	CONSTRAINT fk_productions_countries
	FOREIGN KEY(country_id)
	REFERENCES countries(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE,

	CONSTRAINT fk_productions_productions_info
	FOREIGN KEY(production_info_id)
	REFERENCES productions_info(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

DROP TABLE IF EXISTS productions_actors CASCADE;
CREATE TABLE productions_actors (
	production_id INTEGER NOT NULL,
	actor_id INTEGER NOT NULL,

	CONSTRAINT pk_productions_actors
	PRIMARY KEY(production_id, actor_id),

	CONSTRAINT fk_productions_actors_productions
	FOREIGN KEY(production_id)
	REFERENCES productions(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE,

	CONSTRAINT fk_productions_actors_actors
	FOREIGN KEY(actor_id)
	REFERENCES actors(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

DROP TABLE IF EXISTS categories_productions CASCADE;
CREATE TABLE categories_productions (
	category_id INTEGER NOT NULL,
	production_id INTEGER NOT NULL,

	CONSTRAINT pk_categories_productions
	PRIMARY KEY(category_id, production_id),

	CONSTRAINT fk_categories_productions_categories
	FOREIGN KEY(category_id)
	REFERENCES categories(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE,

	CONSTRAINT fk_categories_productions_productions
	FOREIGN KEY(production_id)
	REFERENCES productions(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);
