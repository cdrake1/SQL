-- assignment 5 Collin Drake

-- creating a table for students
CREATE TABLE IF NOT EXISTS students(
    recnum INT NOT NULL AUTO_INCREMENT,
    fname VARCHAR(20),
    lname VARCHAR(20) NOT NULL,
    grade_val INT,
    PRIMARY KEY(recnum));

-- entering students in different ways

INSERT INTO TABLE students VALUES('1','Jane','Smith','99');
INSERT INTO TABLE students VALUES('2','Bob','Jones','92');
INSERT INTO students (lname) VALUES('Haaland');
INSERT INTO students (lname,fname) VALUES('Collin','Drake');
INSERT INTO students (fname,lname) VALUES('Gojo','Satoru');
INSERT INTO students (fname,lname,grade_val) VALUES('Andrew','Tokash','96');

-- multiple rows command 
INSERT INTO students (fname,lname) 
VALUES('Sasuke','Uchiha'),
('Abe', 'Lincoln'),
('Collin','Drake');

-- chainging recnum
INSERT INTO students (recnum,fname,lname) 
VALUES(100, "Elon", "Musk");
INSERT INTO students (recnum,fname,lname, grade_val)
VALUES(101,'Mark','Zuckerberg',87);

-- deleting a record
DELETE FROM students WHERE recnum = 8;
INSERT INTO students (fname,lname)
VALUES("ABE", "LINCOLN");


-- Retreiving certain columns 
SELECT * FROM table;

-- create a new table named courses

CREATE TABLE IF NOT EXISTS courses(
    type ENUM('Major','Minor','Core','Elective') NOT NULL,
    course CHAR(9) NOT NULL UNIQUE,
    section SMALLINT(3),
    credits ENUM('3','4'),
    title VARCHAR(40),
    days ENUM('M','T','W','R','F','S'),
    time CHAR(15),
    year YEAR,
    comments VARCHAR(60));

-- insert 4 records into table

INSERT INTO courses VALUES
("Major", "CMPT-308",112,"4","Database Management","M","1100",2022,
"databases and how they interact");
INSERT INTO courses VALUES
('Major', 'CMPT-306',110,'4','Data Communications','W','1400',2022,
'how the internet and data works');
INSERT INTO courses VALUES
('Major', 'CMPT-221',112,'4','Software D2','F','0930',2022,
'front end development');
INSERT INTO courses VALUES
('Major', 'MATH-130',112,'4','Statistics','W','1530',2022,
'introduction to statistics');

--insert 2 records for required columns
INSERT INTO courses (type, course) VALUES
('Minor', 'HIST-100');
INSERT INTO courses (type,course) VALUES
('Core', 'MATH-240');

-- insert 4 records for only 5-7 columns

INSERT INTO courses (type, course, credits, title, days) VALUES("Major", "BIOL-211","4", "Biology Basics", "M");
INSERT INTO courses (type, course, days, time, year) VALUES("Minor", "BUS-100","F","1200",2005);
INSERT INTO courses (type, course, title, days, time) VALUES("Elective","ART-101","Drawing 101", "R", "1530");
INSERT INTO courses (type, course, credits, days, time) VALUES("Major", "CMPT-400", "4", "T", "1215");