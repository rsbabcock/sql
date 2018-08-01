-- Provide a query showing only the Employees who are Sales Agents.

SELECT c.FirstName, c.LastName, c.Title
from Employee c
WHERE c.Title LIKE '%agent%'