 -- courses taken by each student, including the course names, student names, and grades achieved.

CREATE OR REPLACE VIEW view_1 AS
SELECT
	students.name as student_name,
    courses.name as course_name,
    class_registrations.grade_achieved as grade_achieved
FROM
	students,
    courses,
    class_registrations
WHERE
	class_registrations.courses_id = courses.id AND
    class_registrations.students_id = students.id;

SELECT * from view_1;