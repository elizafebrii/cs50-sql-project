-- 1. List all songs by Radiohead
SELECT songs.title
FROM songs
JOIN albums ON songs.album_id = albums.id
JOIN artists ON albums.artist_id = artists.id
WHERE artists.name = 'Radiohead';

-- 2. Show all albums released after the year 2000
SELECT title, release_year
FROM albums
WHERE release_year > 2000;

-- 3. List all songs in the "Late Night Chill" playlist, ordered
SELECT songs.title
FROM playlist_songs
JOIN playlists ON playlist_songs.playlist_id = playlists.id
JOIN songs ON playlist_songs.song_id = songs.id
WHERE playlists.name = 'Late Night Chill'
ORDER BY playlist_songs.position;

-- 4. Count how many songs each artist has
SELECT artists.name, COUNT(songs.id) AS song_count
FROM artists
JOIN albums ON artists.id = albums.artist_id
JOIN songs ON albums.id = songs.album_id
GROUP BY artists.name;

-- 5. Find the longest song in the database
SELECT title, duration
FROM songs
ORDER BY duration DESC
LIMIT 1;

SELECT books.title, books.publication_year
FROM books
JOIN authors ON books.author_id = authors.id
WHERE authors.name = 'Fyodor Dostoevsky';

SELECT movies.title, movies.release_year
FROM movies
JOIN directors ON movies.director_id = directors.id
WHERE directors.name = 'Quentin Tarantino'
ORDER BY movies.release_year;

SELECT
    li.position,
    li.item_type,
    CASE
        WHEN li.item_type = 'song' THEN s.title
        WHEN li.item_type = 'book' THEN b.title
        WHEN li.item_type = 'movie' THEN m.title
        ELSE 'Unknown'
    END AS item_title
FROM list_items li
LEFT JOIN songs s ON li.item_type = 'song' AND li.item_id = s.id
LEFT JOIN books b ON li.item_type = 'book' AND li.item_id = b.id
LEFT JOIN movies m ON li.item_type = 'movie' AND li.item_id = m.id
JOIN lists l ON li.list_id = l.id
WHERE l.name = 'My Favorites'
ORDER BY li.position;

SELECT authors.name, COUNT(books.id) AS book_count
FROM authors
LEFT JOIN books ON authors.id = books.author_id
GROUP BY authors.name;

SELECT title, duration
FROM movies
ORDER BY duration ASC
LIMIT 1;
