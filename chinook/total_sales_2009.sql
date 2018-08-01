-- What are the respective total sales for each of those years?

SELECT SUM(i.total) as 'Total Sales'
FROM Invoice i
WHERE i.InvoiceDate LIKE '%2009%'


