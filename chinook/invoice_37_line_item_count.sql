--  Looking at the InvoiceLine table, 
-- provide a query that COUNTs the number of line items for 
-- Invoice ID 37.

SELECT COUNT() as 'Number of Line Items', i.invoiceId
FROM InvoiceLine i
WHERE i.invoiceId = 37


