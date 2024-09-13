SELECT
	first_name, last_name, make, model, mileage
FROM
	cars
JOIN
	cars_drivers 
ON 
	cars_drivers.car_id = cars.id
JOIN
	drivers 
ON 
	drivers.id = cars_drivers.driver_id
WHERE
	mileage IS NOT NULL
ORDER BY
	mileage DESC,
	first_name ASC
    