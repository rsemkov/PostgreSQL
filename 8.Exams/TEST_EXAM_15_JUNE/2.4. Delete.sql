DELETE FROM addresses
WHERE 
	MOD(id, 2) = 0
AND
	LOWER(street) LIKE '%r%';

-- Delete all addresses from table 'addresses', where the id is divisible by 2 and the street 
-- name contains the letter 'r' (case-insensitive).
