-- Provide a query that shows the invoices associated with each sales agent. 
-- The resultant table should include the Sales Agent's full name.

SELECT i.invoiceId, e.FirstName, e.LastName
from Invoice i
LEFT JOIN Customer
LEFT JOIN Employee e
WHERE i.customerId = Customer.customerId
AND Customer.SupportRepId = e.EmployeeId
