ALTER TABLE countries_rivers
	ADD CONSTRAINT fk_countries_rivers_rivers
	FOREIGN KEY(river_id)
	REFERENCES rivers(id)
	ON UPDATE CASCADE,
	
	ADD CONSTRAINT fk_countries_rivers_countries
	FOREIGN KEY(country_code)
	REFERENCES countries(country_code)
	ON UPDATE CASCADE;

-- Revise the "countries_rivers" table by ensuring that its relationship with the "rivers" 
-- and "countries" tables is properly updated. When a row in the parent tables is updated, 
-- ensure that matching rows in the child table are also updated.
