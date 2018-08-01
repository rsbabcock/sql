-- How many Invoices were there in 2009 and 2011?

SELECT Count() as "Total Invoices", i.InvoiceDate
FROM Invoice i
WHERE i.InvoiceDate LIKE '%2011%'