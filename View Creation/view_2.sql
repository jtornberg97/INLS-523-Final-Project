CREATE OR REPLACE VIEW view_2 AS
SELECT
	avg(class_registrations.grade_achieved) as average_grade,
    courses.name as course_name,
    instructors.name as instructor_name
FROM
	class_registrations,
    courses,
    instructors
WHERE 
	class_registrations.courses_id = courses.id AND
    class_registrations.instructors_id = instructors.id
GROUP BY
	course_name;

SELECT * from view_2;