-- Which sales agent made the most in sales in 2009?
-- This is incomplete - it returns sales for all three employees, I can't get it narrowed to top performer even though I know who it is.

SELECT SUM(i.total) as 'total sales', e.firstname, e.lastname
FROM Invoice i
LEFT JOIN Customer c
LEFT JOIN Employee e
WHERE i.customerid = c.customerid
AND c.SupportRepId = e.employeeId
AND i.invoiceDate LIKE '%2009%'
GROUP BY e.employeeId





