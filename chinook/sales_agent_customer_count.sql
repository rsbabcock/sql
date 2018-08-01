-- Provide a query that shows the count of customers assigned to each sales agent.

SELECT c.firstName, c.lastName, e.firstName, e.lastName, e.title
FROM Customer c
LEFT JOIN Employee e
WHERE c.supportRepId = e.employeeId
ORDER BY e.employeeID
