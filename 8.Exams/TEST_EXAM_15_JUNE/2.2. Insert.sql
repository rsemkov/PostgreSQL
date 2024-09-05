INSERT INTO addresses(street, town, country, account_id)
SELECT username, password, ip, age
FROM accounts
WHERE gender = 'F';


-- You need to insert data records into the 'addresses' table, derived from the 'accounts' table. 
-- For accounts identified as female gender, insert corresponding data into the 'addresses' table with the following values:
-- ⦁	street - set it to the username of the account.
-- ⦁	town - set it to the password of the account.
-- ⦁	country - set it to the ip of the account.
-- ⦁	account_id - set it to the age of the account.
