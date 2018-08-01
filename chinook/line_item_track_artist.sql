-- Provide a query that includes the purchased track name
--  AND artist name with each invoice line item.

SELECT t.name, a.name, i.InvoiceLineId
FROM Track t
LEFT JOIN Album
LEFT JOIN Artist a
LEFT JOIN InvoiceLine i
WHERE t.albumId = album.albumid
AND album.artistId = a.artistId
AND i.trackId = t.trackId
