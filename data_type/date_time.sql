# DATE store value of DATE but no TIME with format of YYYY-MM-DD
# TIME store value of TIME but no DATE with format of HH:MM:SS
# DATETIME store value of both DATE and TIME with format of YYYY-MM-DD HH:MM:SS

CREATE TABLE people (name VARCHAR(100), birthdate DATE, birthtime TIME, birthdt DATETIME);
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35');
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES('Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42');
 
SELECT * FROM people;