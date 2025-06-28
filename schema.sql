-- ARTISTS
CREATE TABLE artists (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    country TEXT,
    debut_year INTEGER
);

-- ALBUMS
CREATE TABLE albums (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    artist_id INTEGER NOT NULL,
    release_year INTEGER,
    FOREIGN KEY (artist_id) REFERENCES artists(id)
);

-- SONGS
CREATE TABLE songs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    album_id INTEGER NOT NULL,
    duration INTEGER NOT NULL,
    track_number INTEGER,
    FOREIGN KEY (album_id) REFERENCES albums(id)
);

-- AUTHORS
CREATE TABLE authors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    country TEXT,
    birth_year INTEGER
);

-- BOOKS
CREATE TABLE books (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    author_id INTEGER NOT NULL,
    publication_year INTEGER,
    pages INTEGER,
    FOREIGN KEY (author_id) REFERENCES authors(id)
);

-- DIRECTORS
CREATE TABLE directors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    country TEXT,
    birth_year INTEGER
);

-- MOVIES
CREATE TABLE movies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    director_id INTEGER NOT NULL,
    release_year INTEGER,
    duration INTEGER,
    FOREIGN KEY (director_id) REFERENCES directors(id)
);

-- PLAYLISTS (for songs)
CREATE TABLE playlists (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- PLAYLIST_SONGS (join table for songs)
CREATE TABLE playlist_songs (
    playlist_id INTEGER NOT NULL,
    song_id INTEGER NOT NULL,
    position INTEGER,
    PRIMARY KEY (playlist_id, song_id),
    FOREIGN KEY (playlist_id) REFERENCES playlists(id),
    FOREIGN KEY (song_id) REFERENCES songs(id)
);

-- GENERAL LISTS (for any type: songs, books, movies)
CREATE TABLE lists (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- LIST_ITEMS (generic list contents)
CREATE TABLE list_items (
    list_id INTEGER NOT NULL,
    item_type TEXT NOT NULL CHECK(item_type IN ('song','book','movie')),
    item_id INTEGER NOT NULL,
    position INTEGER,
    PRIMARY KEY (list_id, item_type, item_id),
    FOREIGN KEY (list_id) REFERENCES lists(id)
);
