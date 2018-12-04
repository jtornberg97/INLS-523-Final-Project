CREATE TABLE classes
(
	id	INT NOT NULL	AUTO_INCREMENT	PRIMARY KEY,
    schedule	ENUM("MWF", "TTH") NOT NULL,
    location	VARCHAR(100) NOT NULL,
    capacity	INT NOT NULL,	
    instructors_id	INT REFERENCES instructors(id),
    courses_id	INT REFERENCES instructors(id)
);