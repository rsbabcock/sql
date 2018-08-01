-- Provide a query that shows the # of invoices per country. HINT: GROUP BY

SELECT COUNT() as 'Number of Invoices', i.BillingCountry
FROM Invoice i
GROUP BY i.BillingCountry
