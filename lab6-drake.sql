-- lab 6 Software Development 2 Collin Drake

USE mod6_db;

DROP TABLE commmands;

CREATE TABLE commands(
    recnum INT AUTO_INCREMENT PRIMARY KEY,
    command VARCHAR(20) NOT NULL,
    updated TIMESTAMP NOT NULL,
    descriptions VARCHAR(50)
    );

-- step 3 insert a new row
INSERT INTO commands VALUES(1,"CREATE",CURRENT_TIMESTAMP,"Create a new table");

-- step 4 insert a new row
INSERT INTO commands VALUES(2,"ANOTHER",CURRENT_TIMESTAMP,"This will be deleted");

EXPLAIN commands;
SELECT * FROM commands;

-- step 5 delete the row where command = another
DELETE FROM commands WHERE command = "ANOTHER";
SELECT * FROM commands;

-- step 6 insert a new row
INSERT INTO commands VALUES(2,"DELETE",CURRENT_TIMESTAMP,"DELETING");

-- step 7 insert 5 new rows
INSERT INTO commands VALUES(3,"DATABASE",CURRENT_TIMESTAMP,"Create database");
INSERT INTO commands VALUES(4,"TABLE", CURRENT_TIMESTAMP,"Create table");
INSERT INTO commands VALUES(5,"ANOTHER", CURRENT_TIMESTAMP,"TO BE DELETED");
INSERT INTO commands VALUES(6,"SELECT", CURRENT_TIMESTAMP,"selects data from a database");
INSERT INTO commands VALUES(7,"EXPLAIN", CURRENT_TIMESTAMP,"Explain the contents of a table");

-- step 8 delete row where recnum is 5
DELETE FROM commands WHERE recnum = 5;
SELECT * FROM commands;

-- step 9 check the table by ordering by command asc and desc
SELECT * FROM commands ORDER BY command;
SELECT * FROM commands ORDER BY command DESC;

-- step 10 add a new column called type
ALTER TABLE commands ADD types ENUM("COMMAND", "OPERAND", "NONE") DEFAULT "NONE";

-- step 11 update the table by setting type to command
UPDATE commands SET types="COMMAND";
SELECT * FROM commands;

-- step 12 update the table by setting types to command lowercase
UPDATE commands SET types="command";
SELECT * FROM commands;

-- step 13 insert a new row
INSERT INTO commands (command,updated,descriptions) VALUES("WHERE",CURRENT_TIMESTAMP,"Filter records");

-- step 14 update row 8 types column
UPDATE commands SET types="operand" WHERE recnum = 8;
SELECT * FROM commands;

-- step 15 update row 1 and its update time
UPDATE commands SET updated = '2000-01-01 12:00:00' WHERE recnum = 1;

-- step 16 play around with update
UPDATE commands SET types="NONE" WHERE recnum % 2 = 0;
SELECT * FROM commands;

-- step 17 delete rows 3 and 4
DELETE FROM commands WHERE recnum = 3;
DELETE FROM commands WHERE recnum = 4;
SELECT * FROM commands;

-- step 18
SELECT * FROM commands ORDER BY command;


-- step 19
SELECT COUNT(*) FROM commands;

