--  Provide a query that includes the purchased track name with each invoice line item.

SELECT t.name, i.InvoiceLineId
FROM Track t
JOIN InvoiceLine i
WHERE i.trackId = t.trackId

