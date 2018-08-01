-- Provide a query showing the Invoices of customers who are from Brazil. 
-- The resultant table should show the customer's 
-- full name, Invoice ID, Date of the invoice and billing country.

SELECT c.FirstName, c.LastName, i.invoiceId, i.invoiceDate, c.Country
from Customer c
JOIN Invoice i
WHERE c.Country = "Brazil"