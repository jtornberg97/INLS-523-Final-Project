select * from students;

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




select * from courses;

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




select * from course_prerequisites;

INSERT INTO course_prerequisites
	(course_id, has_prerequisite, prerequisite_for)
VALUES
	(1, 3, 4);

INSERT INTO course_prerequisites
	(course_id, has_prerequisite)
VALUES
	(4, 3);
    
INSERT INTO course_prerequisites
	(course_id, has_prerequisite)
VALUES
	(4, 2);




select * from instructors;

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




select * from instructor_types;

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



select * from classes;

INSERT INTO classes
	(instance, schedule, location, capacity)
VALUES
	("-004 Fall 2018", "MWF", "Manning 101", 50);
    
INSERT INTO classes
	(instance, schedule, location, capacity)
VALUES
	("-003", "TTH", "Manning 102", 100);

INSERT INTO classes
	(instance, schedule, location, capacity)
VALUES
	("-001 Fall 2018", "MWF", "Manning 103", 75);




select * from class_registrations;

INSERT INTO class_registrations
	(status, grade_achieved, courses_id, classes_id, students_id, instructors_id)
VALUES
	("active", 90, 1, 1, 1, 1);

INSERT INTO class_registrations
	(status, grade_achieved, courses_id, classes_id, students_id, instructors_id)
VALUES
	("active", 80, 2, 2, 1,2);

INSERT INTO class_registrations
	(status, grade_achieved, courses_id, classes_id, students_id, instructors_id)
VALUES
	("active", 95, 3, 3, 1, 3 );

INSERT INTO class_registrations
	(status, grade_achieved, courses_id, classes_id, students_id, instructors_id)
VALUES
	("active", 85, 1, 1, 2, 1 );

INSERT INTO class_registrations
	(status, grade_achieved, courses_id, classes_id, students_id, instructors_id)
VALUES
	("active", 90, 2, 2, 2, 2);

INSERT INTO class_registrations
	(status, grade_achieved, courses_id, classes_id, students_id, instructors_id)
VALUES
	("active", 85, 3, 3, 2 ,3);

INSERT INTO class_registrations
	(status, grade_achieved, courses_id, classes_id, students_id, instructors_id)
VALUES
	("active", 90, 3, 3, 3, 3);

INSERT INTO class_registrations
	(status, grade_achieved, courses_id, classes_id, students_id, instructors_id)
VALUES
	("active", 90, 1, 1, 3, 1);

INSERT INTO class_registrations
	(status, grade_achieved, courses_id, classes_id, students_id, instructors_id)
VALUES
	("active", 90, 2, 2, 3, 2);


