-- Provide a query showing a unique/distinct list of billing countries 
-- from the Invoice table.

-- This only works for one column and returns only the distinct values, one of whatever the value is
-- note: If you look at the data there are no outlier countries that only occur once
SELECT DISTINCT i.BillingCountry
from Invoice i
