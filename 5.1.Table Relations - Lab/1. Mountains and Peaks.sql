CREATE TABLE IF NOT EXISTS mountains (
	id SERIAL PRIMARY KEY, 
	name VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS peaks (
	id SERIAL PRIMARY KEY, 
	name VARCHAR(50), 
	mountain_id INT,
	CONSTRAINT fk_peaks_mountains
		FOREIGN KEY(mountain_id)
			REFERENCES mountains(id)
);


-- Write a query to create two tables – mountains and peaks and link their fields properly by 
-- setting Foreign Key Constraint (fk_peaks_mountains). Tables should have:
-- ⦁	Mountains:
-- ⦁	id 
-- ⦁	name, max-length = 50
-- ⦁	Peaks: 
-- ⦁	id
-- ⦁	name, max-length = 50
-- ⦁	mountain_id
