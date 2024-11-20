USE data;
/*artists*/
INSERT INTO artists (artist_id, artist_name, genre, debut_year) VALUES (1, 'The Beach Boys', 'Rock', 1966);
INSERT INTO artists (artist_id, artist_name, genre, debut_year) VALUES (2, 'The Beatles', 'Rock', 1969);
INSERT INTO artists (artist_id, artist_name, genre, debut_year) VALUES (3, 'Artist A', 'Metal', 1970);
INSERT INTO artists (artist_id, artist_name, genre, debut_year) VALUES (4, 'Artist B', 'Classic', 1971);
INSERT INTO artists (artist_id, artist_name, genre, debut_year) VALUES (5, 'Artist C', 'Trance', 2011);

/*albums*/
INSERT INTO albums (album_id, album_title, release_date) VALUES (1, 'Pet Sounds', '1966-05-16');
INSERT INTO albums (album_id, album_title, release_date) VALUES (2, 'Abbey Road', '1969-09-26');
INSERT INTO albums (album_id, album_title, release_date) VALUES (3, 'Album A', '1971-09-26');
INSERT INTO albums (album_id, album_title, release_date) VALUES (4, 'Album B', '1972-03-06');
INSERT INTO albums (album_id, album_title, release_date) VALUES (5, 'Album C', '2012-05-09');

/*songs*/
INSERT INTO songs (song_id, song_title, length, release_date) VALUES (1, 'Sloop John B', 2.97, '1965-12-29');
INSERT INTO songs (song_id, song_title, length, release_date) VALUES (2, 'Come Together', 4.3, '1969-10-06');
INSERT INTO songs (song_id, song_title, length, release_date) VALUES (3, 'Heart', 3, '1971-07-06');
INSERT INTO songs (song_id, song_title, length, release_date) VALUES (4, 'Sword', 5.5, '1973-11-03');
INSERT INTO songs (song_id, song_title, length, release_date) VALUES (5, 'Fish', 1, '2011-10-24');

/*concerts*/
INSERT INTO concerts (concert_id, concert_title, location, date_of_concert) VALUES (1, 'The Beach Boys 2024','OLG Stage', '2024-11-17');
INSERT INTO concerts (concert_id, concert_title, location, date_of_concert) VALUES (2, 'The Fab Four: USA Meets The Beatles!', 'Atlanta Symphony Hall', '2024-11-22');
INSERT INTO concerts (concert_id, concert_title, location, date_of_concert) VALUES (3, 'Concert 1','S', '2024-11-20');
INSERT INTO concerts (concert_id, concert_title, location, date_of_concert) VALUES (4, 'Concert 2','L', '2024-11-21');
INSERT INTO concerts (concert_id, concert_title, location, date_of_concert) VALUES (5, 'Concert 3','T', '2024-11-22');

/*fans*/
INSERT INTO fans (fan_id, fan_name, fan_email, age) VALUES (1, 'John Doe', 'johndoe@example.com', 25);
INSERT INTO fans (fan_id, fan_name, fan_email, age) VALUES (2, 'Jane Doe', 'janedoe@example.com', 30);
INSERT INTO fans (fan_id, fan_name, fan_email, age) VALUES (3, 'Amy Smith', 'amy@example.com', 21);
INSERT INTO fans (fan_id, fan_name, fan_email, age) VALUES (4, 'Danny Scott', 'danny@example.com', 19);
INSERT INTO fans (fan_id, fan_name, fan_email, age) VALUES (5, 'Woody Allen', 'woody@example.com', 20);

/*tickets*/
INSERT INTO tickets (ticket_id, concert_id, purchase_date, ticket_price, seat_zone, seat_number) VALUES (1, 1, '2024-10-01', 40.35, 'A', 'A1');
INSERT INTO tickets (ticket_id, concert_id, purchase_date, ticket_price, seat_zone, seat_number) VALUES (2, 2, '2024-11-01', 35.0, 'B', 'B2');
INSERT INTO tickets (ticket_id, concert_id, purchase_date, ticket_price, seat_zone, seat_number) VALUES (3, 3, '2023-09-08', 65.0, 'C', 'C3');
INSERT INTO tickets (ticket_id, concert_id, purchase_date, ticket_price, seat_zone, seat_number) VALUES (4, 4, '2024-07-12', 98.0, 'D', 'D4');
INSERT INTO tickets (ticket_id, concert_id, purchase_date, ticket_price, seat_zone, seat_number) VALUES (5, 5, '2024-05-09', 121.0, 'E', 'E5');

/*ticket_fan*/
INSERT INTO ticket_fans (ticket_id, fan_id) VALUES (1, 1);
INSERT INTO ticket_fans (ticket_id, fan_id) VALUES (2, 2);
INSERT INTO ticket_fans (ticket_id, fan_id) VALUES (3, 3);
INSERT INTO ticket_fans (ticket_id, fan_id) VALUES (4, 4);
INSERT INTO ticket_fans (ticket_id, fan_id) VALUES (5, 5);

/*album_artists*/
INSERT INTO album_artists (album_id, artist_id) VALUES (1, 1);
INSERT INTO album_artists (album_id, artist_id) VALUES (2, 2);
INSERT INTO album_artists (album_id, artist_id) VALUES (3, 3);
INSERT INTO album_artists (album_id, artist_id) VALUES (4, 4);
INSERT INTO album_artists (album_id, artist_id) VALUES (5, 5);

/*album_songs*/
INSERT INTO album_songs (album_id, song_id) VALUES (1, 1);
INSERT INTO album_songs (album_id, song_id) VALUES (2, 2);
INSERT INTO album_songs (album_id, song_id) VALUES (3, 3);
INSERT INTO album_songs (album_id, song_id) VALUES (4, 4);
INSERT INTO album_songs (album_id, song_id) VALUES (5, 5);

/*concert_artists*/
INSERT INTO concert_artists (concert_id, artist_id) VALUES (1, 1);
INSERT INTO concert_artists (concert_id, artist_id) VALUES (2, 2);
INSERT INTO concert_artists (concert_id, artist_id) VALUES (3, 3);
INSERT INTO concert_artists (concert_id, artist_id) VALUES (4, 4);
INSERT INTO concert_artists (concert_id, artist_id) VALUES (5, 5);

/*concert_songs*/
INSERT INTO concert_songs (concert_id, song_id, order_performance) VALUES (1, 1, 1);
INSERT INTO concert_songs (concert_id, song_id, order_performance) VALUES (2, 2, 1);
INSERT INTO concert_songs (concert_id, song_id, order_performance) VALUES (3, 3, 1);
INSERT INTO concert_songs (concert_id, song_id, order_performance) VALUES (4, 4, 1);
INSERT INTO concert_songs (concert_id, song_id, order_performance) VALUES (5, 5, 1);