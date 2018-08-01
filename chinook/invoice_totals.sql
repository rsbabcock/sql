-- Provide a query that shows the 
-- Invoice Total, 
-- Customer name, Country and Sale Agent name for all invoices and customers.

SELECT i.Total, c.FirstName, c.LastName, c.Country, e.FirstName, e.LastName
FROM Invoice i
LEFT JOIN Customer c
LEFT JOIN Employee e
WHERE i.customerId = c.customerId
AND c.SupportRepId = e.EmployeeId
