ALTER TABLE countries
	ADD CONSTRAINT fk_currencies_countries
	FOREIGN KEY (currency_code)
	REFERENCES currencies(currency_code)
	ON DELETE CASCADE,

	ADD CONSTRAINT fk_continents_countries
	FOREIGN KEY (continent_code)
	REFERENCES continents(continent_code)
	ON DELETE CASCADE;

-- Let's proceed to establish the relationships and update the "countries" table. 
-- 	Locate the columns that correspond to the "continents" and "currencies" tables, 
-- 	and ensure that when a record in the parent table is deleted, corresponding records 
-- 	in the child table are also deleted. 
