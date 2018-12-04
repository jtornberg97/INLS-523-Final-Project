INSERT INTO students
	(name, email, enrollment_date, gpa, accumulated_credit_hours)
VALUES
	("Michael Jordan", "mjordan@live.unc.edu", "2018-12-12 12:30:00", 3.5, 100)

INSERT INTO students
	(name, email, enrollment_date, gpa, accumulated_credit_hours)
VALUES
	("Ashley Simon", "asimon@live.unc.edu", "2018-12-13 12:15:00", 3.8, 115)

INSERT INTO instructors
	(name, email, phone)
VALUES
	("Stephen Ware", "sware@unc.edu", "789-876-1234")

INSERT INTO instructors
	(name, email, phone)
VALUES
	("Tiffany Smith", "tsmith@unc.edu", "788-856-2234")

INSERT INTO instructor_types
	(instructor_id, type)
VALUES
	(1, "adjunct")

INSERT INTO courses
	(name, description)
VALUES
	("INLS 523 ", "Database systems")

INSERT INTO courses
	(name, description)
VALUES
	("INLS 560 ", "Introduction to programming in Python")
    
INSERT INTO courses
	(name, description)
VALUES
	("INLS 161 ", "Introduction to information tools")

INSERT INTO course_prerequisites
	(course_id, has_prerequisite, prerequisite_for)
VALUES
	(1, 2, 3)

INSERT INTO classes
	(name, schedule, location, capacity, instructors_id, courses_id)
VALUES
	("INLS523-004 Fall 2018", "MWF", "Manning 101", 100, 1, 1)

INSERT INTO classes
	(name, schedule, location, capacity, instructors_id, courses_id)
VALUES
	("INLS560-001 Fall 2018", "TTH", "Manning 102", 50, 2, 2);

INSERT INTO class_registrations
	(status, grade_achieved, courses_id, classes_id, students_id, instructors_id)
VALUES
	("active", "90", 1, 1, 1, 1);

INSERT INTO class_registrations
	(status, grade_achieved, courses_id, classes_id, students_id, instructors_id)
VALUES
	("completed", "75", 2, 2, 3, 2);






