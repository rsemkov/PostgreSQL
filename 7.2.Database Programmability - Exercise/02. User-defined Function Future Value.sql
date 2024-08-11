CREATE OR REPLACE FUNCTION fn_calculate_future_value(
	initial_sum INT, 
	yearly_interest_rate DECIMAL, 
	number_of_years INT
	)

RETURNS DECIMAL AS

$$
DECLARE
	future_value DECIMAL;
BEGIN
    future_value := initial_sum * (POWER(1 + yearly_interest_rate, number_of_years));
RETURN 
    TRUNC(future_value, 4);
		
END;
$$
	
LANGUAGE plpgsql;

-- As a financial analyst for a bank, your job is to develop a PostgreSQL function that computes 
-- the future value of an investment. Your objective is to create a function called "fn_calculate_future_value", 
-- which requires three inputs: "initial_sum", "yearly_interest_rate", and "number_of_years".
	
-- -"initial_sum" - represents the amount of money initially invested;
-- -"yearly_interest_rate" - is the annual interest rate represented as a decimal;
-- -"number_of_years" - represents the duration for which the investment will earn interest;
-- -the function should output the future value of the investment, rounded to four decimal places.
