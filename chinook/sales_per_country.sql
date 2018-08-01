-- Provide a query that shows the total sales per country.
-- Note: There are 2 ways to do this. By getting the country data by customer is probably not very efficient,
-- it would be interesting to see iff the output is different

SELECT SUM(i.total) as 'total sales', c.country
FROM Invoice i
LEFT JOIN Customer c
WHERE i.customerid = c.customerId
GROUP BY c.country





