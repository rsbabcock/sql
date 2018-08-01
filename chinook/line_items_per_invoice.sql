-- Looking at the InvoiceLine table, 
-- provide a query that COUNTs the number of line 
-- items for each Invoice. HINT: GROUP BY

SELECT COUNT() as 'Number of Line Items', i.invoiceId
FROM InvoiceLine i
GROUP BY i.InvoiceId


