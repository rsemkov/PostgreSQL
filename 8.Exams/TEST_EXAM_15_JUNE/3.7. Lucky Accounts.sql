SELECT
	CONCAT(id, ' ', username) AS id_username, email
FROM
	accounts AS a
JOIN
	accounts_photos AS ap
ON 
	ap.account_id = a.id
WHERE
	ap.account_id = ap.photo_id
ORDER BY
	account_id

-- Identify Lucky Accounts where the account id matches their photo id.
-- Extract the id concatenated with the username (as id_username) and the email for all such lucky accounts.
-- Sort the results in ascending order by account id.
-- Required Columns
-- ⦁	id_username (id + " " + username)
-- ⦁	email
