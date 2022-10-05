CREATE DATABASE mod6_db;

CREATE TABLE IF NOT EXISTS student1 (
    fname CHAR(20), 
    lname CHAR(20) NOT NULL, 
    student_id INT NOT NULL,
    grade_num INT, grade_letter ENUM('A','B','C','D','F','N/A','INC'));

INSERT INTO student1 VALUES('Andrew', 'Smith', '2011895', '89','B');
INSERT INTO student1 VALUES('Barbara', 'Jones', '2011755', '91','A');
INSERT INTO student1 VALUES('Colin', 'Disckens', '2012063', '94','A');
INSERT INTO student1 VALUES('Deshi', 'Chen', '2012777', '88','B');
INSERT INTO student1 VALUES('Elana', 'Rodriques', '2012821', '83','B');