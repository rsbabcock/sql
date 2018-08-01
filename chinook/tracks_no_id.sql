-- Provide a query that shows all the Tracks, but displays no IDs. 
-- The result should include the Album name, Media type and Genre.

SELECT t.name, a.title, m.name, g.name
FROM Track t
LEFT JOIN Album a
LEFT JOIN MediaType m
LEFT JOIN Genre g
WHERE t.albumId = a.albumId
AND t.MediaTypeId = m.MediaTypeId
AND t.genreId = g.genreId