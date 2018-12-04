CREATE TABLE instructors
(
	id	INT NOT NULL	AUTO_INCREMENT	PRIMARY KEY,
    name VARCHAR(100)	NOT NULL,
    email	VARCHAR(3)	NOT NULL,
    phone	VARCHAR(15),
	instructor_types_id	INT REFERENCES instructor_types(id),
    courses_id	INT REFERENCES courses(id)
);
