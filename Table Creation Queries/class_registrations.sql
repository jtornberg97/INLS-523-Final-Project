CREATE TABLE class_registrations
(
	ID	INT	NOT NULL	AUTO_INCREMENT	PRIMARY KEY,
	status	ENUM('active', 'cancelled', 'completed') NOT NULL,
    grade_achieved	TINYINT	NOT NULL,
    courses_id	INT	REFERENCES courses(id),
    classes_id	INT	REFERENCES classes(id),
    students_id	INT	REFERENCES students(id),
    instructors_id	INT	REFERENCES instructors(id)
);
