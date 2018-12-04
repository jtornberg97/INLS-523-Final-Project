CREATE TABLE students
(
	id	INT	NOT NULL	AUTO_INCREMENT	UNIQUE	PRIMARY KEY,	
    name	VARCHAR(100)	NOT NULL,
    email	VARCHAR(200)	NOT NULL,
    enrollment_date	DATETIME	NOT NULL,
    gpa DECIMAL(4, 2) NOT NULL,
    accumulated_credit_hours TINYINT	NOT NULL
);
