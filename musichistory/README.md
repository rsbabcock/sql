#1. Query all of the entries in the Genre table

    SELECT g.label

    FROM Genre g

#2.Using the INSERT statement, add one of your favorite artists to the Artist table.

    INSERT into Artist

    values( null, "BIlly Joel",  1980)

#3.Using the INSERT statement, add one, or more, albums by your artist to the Album table.
    
    INSERT into Album
    
    SELECT null, "The River Of Dreams", 1993,  4910, "The Boathouse at the Island Boatyard", artist.artistId, genre.genreId
    
    FROM Artist, Genre
    
    WHERE artist.artistName = "BIlly Joel"


#4.Using the INSERT statement, add some songs that are on that album to the Song table.
    
    INSERT into Song
    
    SELECT null, "Lullabye Goodnight, My Angel" , 334,  1993, genre.genreId, artist.artistId, album.albumId
    
    FROM Genre, Artist, Album
    
    WHERE artist.artistName = "BIlly Joel"
    
    AND genre.label = "Rock"
    
    AND album.title = "The River Of Dreams"


#5.Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.

    SELECT artist.artistName, album.title as "album title", song.title as "song title"

    FROM Song

    LEFT JOIN Album
    
    LEFT JOIN Artist
    
    WHERE album.artistId = artist.artistId
    
    AND song.albumId = album.albumId


#6 Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

    SELECT count() as '# of songs', album.title as "Album Title"
    
    FROM Song
    
    JOIN Album 
    
    ON song.albumId = album.albumId
    
    GROUP BY song.albumId
    
    ORDER BY album.title

#8.Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

    SELECT count() as '# of songs', artist.artistName as "Artist Name"
    
    FROM Song
    
    JOIN Artist 
    
    ON song.Artistid = artist.artistId
    
    GROUP BY song.artistID
    
    ORDER BY artist.artistName


#9.Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

    SELECT count() as '# of songs', genre.label as "Genre Name"

    FROM Song

    JOIN Genre 

    ON song.genreId = genre.genreId

    GROUP BY song.genreId

    ORDER BY Genre.label


#10.Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.

#11.Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.

#12.Modify the previous query to also display the title of the album.