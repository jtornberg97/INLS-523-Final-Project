CREATE TABLE instructor_types
(
	instructor_id	INT	REFERENCES instructors(id),
    type	enum('adjunct', 'graduate', 'visitng', 'associate', 'full') NOT NULL
);