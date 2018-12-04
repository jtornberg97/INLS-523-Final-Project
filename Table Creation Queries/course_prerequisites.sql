CREATE TABLE course_prerequisites
(
    course_id INT REFERENCES courses(courses_id),
    has_prerequisite	INT REFERENCES courses (courses_id),
    prerequisite_for	INT REFERENCES courses (courses_id)
);
