-- Provide a query that shows all Invoices but 
-- includes the # of invoice line items.
-- I added total to make this data meaningful

SELECT COUNT() as 'Number of Line Items', i.invoiceId, i.total
FROM Invoice i
JOIN InvoiceLine l
WHERE l.invoiceId = i.invoiceId
GROUP BY i.invoiceId