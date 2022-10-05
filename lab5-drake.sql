--lab5 Collin Drake

--check if table exists and drop it
DROP TABLE IF EXISTS mycds;

-- create new table called mycds
CREATE TABLE IF NOT EXISTS mycds(
    artist_name VARCHAR(20) NOT NULL,
    cd_name VARCHAR(20) NOT NULL,
    date_acquired DATE,
    rating ENUM('0','1','2','3','4','5','6','7','8','9','10'),
    genre ENUM('rap/hip-hop','Rock', 'Pop', 'Country', 'Jazz','R&B'));

--show tables and explain mycds
SHOW TABLES;
EXPLAIN mycds;

--insert 5 records into the mycds table
INSERT INTO mycds  VALUES("Riley green", "Different Round Here", "2019-09-20", "8","Country");
INSERT INTO mycds  VALUES("Kanye West", "ye", "2018-06-01", "7","rap/hip-hop");
INSERT INTO mycds  VALUES("Bruno Mars", "Evening With SilkS", "2021-11-12", "9","R&B");
INSERT INTO mycds  VALUES("Bryson Tiller", "TRAP SOUL", "2015-10-02", "7","R&B");
INSERT INTO mycds  VALUES("Frank Sinatra", "Nothing But the Best", "2008-05-13", "9","Jazz");

--add rice column and insert a new record
ALTER TABLE mycds ADD COLUMN price DECIMAL(5,2);
INSERT INTO mycds VALUES("Nirvana", "Nevermind", "1991-09-24", "8","Rock", "9.99");

--add a new record
INSERT INTO mycds VALUES("Testing", '1', CURDATE(), "3", NULL, NULL);

--add a new column called ID and add a new record
ALTER TABLE mycds ADD COLUMN id INT AUTO_INCREMENT PRIMARY KEY;
INSERT INTO mycds VALUES("Jay-Z", "The Blueprint 3", CURDATE(),"8","rap/hip-hop", "15.99", NULL);

-- add a new record
INSERT INTO mycds VALUES("Wham!", "Make It Big", "1984-11-05", "4", "Pop", "11.99", NULL );

-- add a new column called update and add a new record
ALTER TABLE mycds ADD COLUMN updated TIMESTAMP;
INSERT INTO mycds VALUES("Survive Said Prophet", "Inside Your Head", "2020-01-15", "9", "Rock", "9.99", NULL, CURRENT_TIMESTAMP);

-- show table and order by the artist name
SHOW TABLES;
EXPLAIN mycds;
SELECT * FROM mycds ORDER BY artist_name;