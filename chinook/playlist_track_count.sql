-- Provide a query that shows the total number of tracks in each playlist. 
-- The Playlist name should be include on the resulant table.

SELECT COUNT() as 'Total Tracks' , p.name
FROM Track t
LEFT JOIN PlaylistTrack pt
LEFT JOIN Playlist p
WHERE t.trackId = pt.trackId
AND pt.playlistId = p.playlistId
GROUP BY p.Name

