-- Provide a query that shows total sales made by each sales agent.

SELECT SUM(i.total) as 'total sales', e.FirstName, e.LastName
FROM Invoice i
LEFT JOIN Customer
LEFT JOIN Employee e
WHERE i.customerId = Customer.customerId
AND Customer.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId

