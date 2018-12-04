CREATE TABLE instructor_types
(
	id	INT NOT NULL	AUTO_INCREMENT	PRIMARY KEY,
    adjunct CHAR(7)	NOT NULL,
    graduate CHAR(8)	NOT NULL, 
    visiting CHAR(8)	NOT NULL,
    associate	CHAR(9)	NOT NULL,
    full	CHAR(4) NOT NULL
);