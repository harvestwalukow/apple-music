-- Query the data of songs with a spesific title
SELECT * FROM songs WHERE title = "Bohemian Rhapsody";

-- Query title of songs and its released year
SELECT title, release_year
FROM songs JOIN artists
ON songs.artist_id = artists.id
WHERE first_name = "Queen";

-- Query the name of the artist and each of it's song titles along with the genres
SELECT first_name, title, type
FROM artists
JOIN songs ON artists.id = songs.artist_id
JOIN genre_songs ON songs.id = genre_songs.song_id
JOIN genres ON genre_songs.song_id = genres.id
ORDER BY first_name ASC, title ASC, type ASC;
