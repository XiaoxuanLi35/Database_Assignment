USE modified_concerts_schema;
CREATE TABLE albums (
	album_id INT(10) PRIMARY KEY,
    album_title VARCHAR(256) NOT NULL,
    release_date DATE
);

CREATE TABLE artists (
    artist_id INT(10) PRIMARY KEY,
    artist_name VARCHAR(128) NOT NULL,
    genre VARCHAR(64),
    debut_year YEAR
);

CREATE TABLE concerts (
/*remove the artist_id and put it in the new table concert_artists*/
	concert_id INT PRIMARY KEY,
    concert_title VARCHAR(256),
    location VARCHAR(256),
    date_of_concert DATE
);

CREATE TABLE songs (
/*remove the album_id and put it in the new table album_songs*/
	song_id INT PRIMARY KEY,
    song_title VARCHAR(128),
    length DOUBLE,
    release_date DATE
);

CREATE TABLE concert_songs (
	concert_id INT,
    song_id INT,
    PRIMARY KEY (concert_id, song_id),
    FOREIGN KEY (concert_id) REFERENCES concerts(concert_id),
    FOREIGN KEY (song_id) REFERENCES songs(song_id)
);

CREATE TABLE album_songs (
	album_id INT,
    song_id INT,
    PRIMARY KEY (album_id, song_id),
    FOREIGN KEY (album_id) REFERENCES albums(album_id),
    FOREIGN KEY (song_id) REFERENCES songs(song_id)
);

CREATE TABLE fans (
	fan_id INT PRIMARY KEY,
    fan_name VARCHAR(128),
    fan_email VARCHAR(128),
    age TINYINT
);

CREATE TABLE tickets (
	ticket_id INT PRIMARY KEY,
    concert_id INT,
    purchase_date DATE,
    ticket_price DOUBLE,
    seat_zone VARCHAR(16),
    seat_number VARCHAR(16),
    FOREIGN KEY (concert_id) REFERENCES concerts(concert_id)
);

CREATE TABLE ticket_fans (
    ticket_id INT,
    fan_id INT,
    PRIMARY KEY (ticket_id, fan_id),
    FOREIGN KEY (ticket_id) REFERENCES tickets(ticket_id),
    FOREIGN KEY (fan_id) REFERENCES fans(fan_id)
);

CREATE TABLE album_artists (
/*relations between album and artists*/
    album_id INT,
    artist_id INT,
    PRIMARY KEY (album_id, artist_id),
    FOREIGN KEY (album_id) REFERENCES albums(album_id),
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
);

CREATE TABLE album_songs (
/*relations between album and songs*/
    album_id INT,
    song_id INT,
    PRIMARY KEY (album_id, song_id),
    FOREIGN KEY (album_id) REFERENCES albums(album_id),
    FOREIGN KEY (song_id) REFERENCES songs(song_id)
);

CREATE TABLE concert_artists (
/*relations between concert and artists*/
    concert_id INT,
    artist_id INT,
    PRIMARY KEY (concert_id, artist_id),
    FOREIGN KEY (concert_id) REFERENCES concerts(concert_id),
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
);

CREATE TABLE concert_songs (
/*relations between concert and songs*/
    concert_id INT,
    song_id INT,
    order_performance TINYINT,
    PRIMARY KEY (concert_id, song_id),
    FOREIGN KEY (concert_id) REFERENCES concerts(concert_id),
    FOREIGN KEY (song_id) REFERENCES songs(song_id)
);
USE modified_concerts_schema;
ALTER TABLE concert_songs ADD COLUMN order_performance TINYINT;