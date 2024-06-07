CREATE OR REPLACE VIEW view_continents_countries_currencies_details AS
SELECT 
	CONCAT(TRIM(con.continent_name), ': ', TRIM(con.continent_code)) AS continent_details,
	CONCAT(cn.country_name, ' - ', cn.capital, ' - ', cn.area_in_sq_km, ' - ', 'km2') AS country_information,
	CONCAT(cu.description, ' (', cu.currency_code, ')') AS currencies
FROM 
	continents AS con,
	countries AS cn,
	currencies AS cu
WHERE
	con.continent_code = cn.continent_code
		AND
	cn.currency_code = cu.currency_code
ORDER BY
	country_information ASC, currencies ASC;