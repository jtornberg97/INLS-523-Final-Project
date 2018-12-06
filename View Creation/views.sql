CREATE OR REPLACE VIEW view_1 AS
SELECT
	students.name AS student_name,
    courses.name AS course_name,
    class_registrations.grade_achieved AS grade_achieved
FROM 
	students,
    courses,
    class_registrations
WHERE
	class_registrations.courses_id = courses.id AND
    class_registrations.students_id = students.id;	
    
SELECT * FROM view_1;


CREATE OR REPLACE VIEW view_2 AS
SELECT 
	avg(class_registrations.grade_achieved) AS average_grade,
    courses.name AS course_name,
    instructors.name AS instructor_name
FROM
	class_registrations,
    courses,
    instructors,
    classes
WHERE
	class_registrations.courses_id = courses.id AND
    class_registrations.classes_id = classes.id AND
	classes.instructors_id = instructors.id
GROUP BY 
	course_name;

SELECT * FROM view_2;