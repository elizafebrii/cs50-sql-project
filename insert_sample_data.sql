-- First: Authors
INSERT INTO authors (name, country, birth_year) VALUES
('Mitch Albom', 'USA', 1958),
('Paulo Coelho', 'Brazil', 1947),
('Lynn Painter', 'USA', 1980),
('Abby Jimenez', 'USA', 1980),
('Emily Henry', 'USA', 1990),
('Ashley Poston', 'USA', 1987),
('Sylvia Plath', 'USA', 1932),
('Fyodor Dostoevsky', 'Russia', 1821),
('Franz Kafka', 'Austria-Hungary', 1883),
('Harper Lee', 'USA', 1926),
('S.E. Hinton', 'USA', 1948),
('Seneca', 'Rome', -4),
('Dolly Alderton', 'UK', 1988);

-- First: Directors
INSERT INTO directors (name, country, birth_year) VALUES
('Quentin Tarantino', 'USA', 1963),
('Damien Chazelle', 'USA', 1985),
('David Fincher', 'USA', 1962),
('Sidney Lumet', 'USA', 1924),
('Rob Reiner', 'USA', 1947),
('Bryan Singer', 'USA', 1965),
('Darren Aronofsky', 'USA', 1969),
('Stanley Kubrick', 'USA', 1928),
('Martin Scorsese', 'USA', 1942);

-- Artists
INSERT INTO artists (name, country, debut_year) VALUES
('Radiohead', 'UK', 1985),
('The Verve', 'UK', 1990),
('The Smiths', 'UK', 1982),
('LANY', 'USA', 2014),
('Fleetwood Mac', 'UK/USA', 1967);

-- Albums
INSERT INTO albums (title, artist_id, release_year) VALUES
('OK Computer', 1, 1997),
('Urban Hymns', 2, 1997),
('Louder Than Bombs', 3, 1987),
("mama's boy", 4, 2020),
('Rumours (Super Deluxe)', 5, 1977);

-- Songs
INSERT INTO songs (title, album_id, duration, track_number) VALUES
('Airbag', 1, 270, 1),
('Paranoid Android', 1, 385, 2),
('Subterranean Homesick Alien', 1, 270, 3),
('Exit Music (For A Film)', 1, 265, 4),
('Let Down', 1, 280, 5),
('Karma Police', 1, 260, 6),
('Fitter Happier', 1, 115, 7),
('Electioneering', 1, 230, 8),
('Climbing Up the Walls', 1, 295, 9),
('No Surprises', 1, 230, 10),
('Lucky', 1, 245, 11),
('The Tourist', 1, 320, 12),
('Bitter Sweet Symphony', 2, 360, 1),
('Sonnet', 2, 270, 2),
('The Rolling People', 2, 440, 3),
('The Drugs Don''t Work', 2, 300, 4),
('you!', 4, 200, 1),
('cowboy in LA', 4, 210, 2),
('heart won''t let me', 4, 225, 3),
('Second Hand News', 5, 170, 1),
('Dreams', 5, 260, 2);

-- Playlists
INSERT INTO playlists (name) VALUES
('Late Night Chill'),
('Indie Essentials');

-- Playlist Songs
INSERT INTO playlist_songs (playlist_id, song_id, position) VALUES
(1, 2, 1),  -- Paranoid Android
(1, 6, 2),  -- Karma Police
(1, 13, 3), -- Bitter Sweet Symphony
(1, 17, 4), -- you!
(2, 20, 1), -- Dreams
(2, 3, 2),  -- Subterranean Homesick Alien
(2, 18, 3), -- cowboy in LA
(2, 19, 4); -- heart won't let me

-- Books
INSERT INTO books (title, author_id, publication_year, pages) VALUES
("Tuesdays with Morrie", 1, 1997, 210),
("The Alchemist", 2, 1988, 182),
("Better Than the Movies", 3, 2021, 356),
("Just for the Summer", 4, 2024, 432),
("Happy Place", 5, 2021, 400),
("Crime and Punishment", 8, 1866, 671),
("The Idiot", 8, 1869, 667),
("Letters from a Stoic", 12, 1964, 254);

-- Movies
INSERT INTO movies (title, director_id, release_year, duration) VALUES
("Django Unchained", 1, 2012, 165),
("Kill Bill: Vol. 1", 1, 2002, 111),
("Whiplash", 2, 2014, 107),
("Fight Club", 3, 1999, 139),
("12 Angry Men", 4, 1957, 97),
("Stand by Me", 5, 1986, 89),
("The Usual Suspects", 6, 1995, 106),
("Requiem for a Dream", 7, 2000, 102),
("The Shining", 8, 1980, 144),
("Shutter Island", 9, 2010, 138);
