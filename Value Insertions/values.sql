-- STUDENTS

INSERT INTO students
	(name, email, enrollment_date, gpa, accumulated_credit_hours)
VALUES
	("Michael Jordan", "mjordan@live.unc.edu", '2018-12-13', 3.8, 100);

INSERT INTO students
	(name, email, enrollment_date, gpa, accumulated_credit_hours)
VALUES
	("Roy Williams", "rwilliams@live.unc.edu", '2018-12-14', 3.3, 80);

INSERT INTO students
	(name, email, enrollment_date, gpa, accumulated_credit_hours)
VALUES
	("Luke Maye", "lmaye@live.unc.edu", '2018-12-11', 3.5, 20);

SELECT * FROM students;


-- COURSES

INSERT INTO courses
	(name, description)
VALUES
	("INLS 523", "Database systems");

INSERT INTO courses
	(name, description)
VALUES
	("INLS 201", "Introduction to information science");
    
INSERT INTO courses
	(name, description)
VALUES
	("INLS 161", "Information tools");
    
INSERT INTO courses
	(name, description)
VALUES
	("INLS 560", "Programming with Python");

SELECT * FROM courses;



-- INSTRUCTORS
 
INSERT INTO instructors
	(name, email, phone)
VALUES
	("Dean Smith", "dsmith@unc.edu", "888-999-0000");

INSERT INTO instructors
	(name, email, phone)
VALUES
	("Carol Folt", "cfolt@unc.edu", "888-999-1111");

INSERT INTO instructors
	(name, email, phone)
VALUES
	("Mack Brown", "mbrown@unc.edu", "888-999-0000");

SELECT * FROM instructors;



-- INSTRUCTOR_TYPES

INSERT INTO instructor_types
	(instructors_id, types)
VALUES
	(1, "visiting");

INSERT INTO instructor_types
	(instructors_id, types)
VALUES
	(2, "full");

INSERT INTO instructor_types
	(instructors_id, types)
VALUES
	(3, "graduate");

SELECT * FROM instructor_types;


-- CLASSES

INSERT INTO classes
	(schedule, location, capacity)
VALUES
	("MWF 9-10", "Manning 101", 50);
    
INSERT INTO classes
	(schedule, location, capacity)
VALUES
	("TTH 1-2", "Manning 102", 100);

INSERT INTO classes
	(schedule, location, capacity)
VALUES
	("MWF 12-1", "Manning 103", 75);



-- CLASS REGISTRATIONS

INSERT INTO class_registrations
	(name, status, grade_achieved, classes_id, students_id)
VALUES
	("001-Fall 2018", "Active", 90, 1, 1);

INSERT INTO class_registrations
	(name, status, grade_achieved, classes_id, students_id)
VALUES
	("002-Fall 2018", "Active", 75, 2, 1);
    
INSERT INTO class_registrations
	(name, status, grade_achieved, classes_id, students_id)
VALUES
	("003-Fall 2018", "Active", 95, 3, 1);

INSERT INTO class_registrations
	(name, status, grade_achieved, classes_id, students_id)
VALUES
	("001-Fall 2018", "Active", 94, 1, 2);

INSERT INTO class_registrations
	(name, status, grade_achieved, classes_id, students_id)
VALUES
	("002-Fall 2018", "Active", 85, 2, 2);

INSERT INTO class_registrations
	(name, status, grade_achieved, classes_id, students_id)
VALUES
	("003-Fall 2018", "Active", 78, 3, 2);

INSERT INTO class_registrations
	(name, status, grade_achieved, classes_id, students_id)
VALUES
	("001-Fall 2018", "Active", 77, 1, 3);

INSERT INTO class_registrations
	(name, status, grade_achieved, classes_id, students_id)
VALUES
	("002-Fall 2018", "Active", 90, 2, 3);

INSERT INTO class_registrations
	(name, status, grade_achieved, classes_id, students_id)
VALUES
	("003-Fall 2018", "Active", 90, 3, 3);
    
-- COURSE PREREQUISITES

INSERT INTO course_prerequisites
	(courses_id, has_prerequisite)
VALUES
	(1, 3);

INSERT INTO course_prerequisites
	(courses_id)
VALUES
	(2);

INSERT INTO course_prerequisites
	(courses_id)
VALUES
	(3);
    
INSERT INTO course_prerequisites
	(courses_id, has_prerequisite)
VALUES
	(4, 1);

INSERT INTO course_prerequisites
	(courses_id, has_prerequisite)
VALUES
	(4, 2);

INSERT INTO course_prerequisites
	(courses_id, has_prerequisite)
VALUES
	(4, 3);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    