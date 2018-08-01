-- Which sales agent made the most in sales over all?
-- Again this is incomplete, I can't figure out how to use MAX
-- But this is total sales for the 3 agents
SELECT SUM(i.total) as 'top sales', e.firstname, e.lastname
FROM Invoice i
LEFT JOIN Customer c
LEFT JOIN Employee e
WHERE i.customerid = c.customerid
AND c.SupportRepId = e.employeeId
GROUP BY e.employeeId

