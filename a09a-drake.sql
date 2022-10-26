CREATE TABLE courses(
    -> recnum INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    -> dept VARCHAR(4) NOT NULL,
    -> course_num SMALLINT NOT NULL,
    -> title VARCHAR(20) NOT NULL,
    -> student VARCHAR(10));

INSERT INTO courses VALUES(1,'CMPT', 221, 'SD II', NULL);
INSERT INTO courses VALUES(2,'CMPT', 308, 'Database Management', NULL);
INSERT INTO courses VALUES(3,'CMPT', 306, 'Data Comm', NULL);