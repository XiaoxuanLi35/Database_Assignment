USE code;
/*Task 3 Create a view to present the sale of tickets of concerts*/
CREATE VIEW ConcertTicketSales AS
SELECT 
    c.concert_id,
    c.concert_name,
    COUNT(t.ticket_id) AS tickets_sold
FROM 
    modified_concerts_schema.concerts c
LEFT JOIN 
    modified_concerts_schema.tickets t ON c.concert_id = t.concert_id
GROUP BY 
    c.concert_id, c.concert_name
HAVING 
    COUNT(t.ticket_id) > 0;

DELIMITER //
/*Task 4
Write one BEFORE and one AFTER trigger for the modified schema
*/
CREATE TRIGGER check_ticket_price
BEFORE INSERT ON tickets 
FOR EACH ROW
BEGIN
    IF NEW.ticket_price < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Ticket price cannot be negative';
    END IF;
END//

DELIMITER ;

DELIMITER //
CREATE TRIGGER add_concert
AFTER INSERT ON concerts
FOR EACH ROW BEGIN
	IF NEW.concert_id NOT IN (SELECT concert_id FROM tickets) THEN
		INSERT INTO concert_id VALUES(NEW.concert_id);
	END IF;
END;//

DELIMITER ;

/*Task 5
Write a stored function that returns the total number of occupied seats for a given concert_id.
*/
DELIMITER //

CREATE FUNCTION total_occupied_seats(concert_id INT) 
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total_seats INT;
    
    SELECT COUNT(ticket_id) 
    INTO total_seats
    FROM modified_concerts_schema.tickets
    WHERE tickets.concert_id = concert_id;
    
    RETURN total_seats;
END//

DELIMITER ;

/*Task 6
Write a stored procedure that checks whether a given song_id is associated with a given album_id. 
If not, insert this association into the database. Additionally,  
adjust the song’s release date if it is later than the album’s.
*/
DELIMITER //

CREATE PROCEDURE CheckAndInsertSong(
    IN song_id INT,
    IN album_id INT
)
BEGIN
    DECLARE song_release_date DATE;
    DECLARE album_release_date DATE;

    /*Check if the song is associated with the album*/
    IF NOT EXISTS (
        SELECT 1 
        FROM song_album 
        WHERE song_id = song_id AND album_id = album_id
    ) THEN
        /*insert the association*/
        INSERT INTO song_album (song_id, album_id)
        VALUES (song_id, album_id);

        /*get the release date of songs and albums*/
        SELECT release_date 
        INTO song_release_date
        FROM songs
        WHERE song_id = song_id;

        SELECT release_date 
        INTO album_release_date
        FROM albums
        WHERE album_id = album_id;

        /*if the release date of the song is later than the album one
        update the release date of the song*/
        IF song_release_date > album_release_date THEN
            UPDATE songs 
            SET release_date = album_release_date
            WHERE song_id = song_id;
        END IF;
    END IF;
END//

DELIMITER ;
