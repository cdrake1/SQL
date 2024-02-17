--- a file with mysql code to create a database with 3 tables. Used to practice mysql...

SHOW DATABASES;

QUIT;

EXIT;

---------------

CREATE DATABASE Music;
USE Music;

---------------

CREATE TABLE Artists (
    artist_id INT AUTO_INCREMENT PRIMARY KEY,
    artist_name VARCHAR(255) NOT NULL,
    genre VARCHAR(100),
    year_formed INT
);

CREATE TABLE Albums (
    album_id INT AUTO_INCREMENT PRIMARY KEY,
    album_title VARCHAR(255) NOT NULL,
    artist_id INT,
    release_date DATE,
    genre VARCHAR(100),
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
);

CREATE TABLE Songs (
    song_id INT AUTO_INCREMENT PRIMARY KEY,
    song_title VARCHAR(255) NOT NULL,
    album_id INT,
    track_number INT,
    FOREIGN KEY (album_id) REFERENCES Albums(album_id)
);

---------------

INSERT INTO Artists (artist_name, genre, year_formed)
VALUES ('BTS', 'K-pop', 2013);

SET @bts_artist_id = LAST_INSERT_ID();

INSERT INTO Albums (album_title, artist_id, release_date, genre)
VALUES ('Map of the Soul: 7', @bts_artist_id, '2020-02-21', 'K-pop');

SET @map_of_the_soul_7_album_id = LAST_INSERT_ID();

INSERT INTO Songs (song_title, album_id, track_number)
VALUES ('Intro: Persona', @map_of_the_soul_7_album_id, 1),
       ('Boy With Luv', @map_of_the_soul_7_album_id, 2),
       ('Make It Right', @map_of_the_soul_7_album_id, 3);

SET @love_yourself_tear_album_id = LAST_INSERT_ID();

INSERT INTO Songs (song_title, album_id, track_number)
VALUES ('Singularity', @love_yourself_tear_album_id, 1),
       ('Fake Love', @love_yourself_tear_album_id, 2),
       ('The Truth Untold', @love_yourself_tear_album_id, 3);