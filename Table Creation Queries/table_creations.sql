CREATE TABLE `classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `schedule` enum('MWF','TTH') NOT NULL,
  `location` varchar(100) NOT NULL,
  `capacity` int(11) NOT NULL,
  `instructors_id` int(11) REFERENCES instructors(id),
  `courses_id` int(11) REFERENCES courses(id),
  `students_id` int(11) REFERENCES students(id)
);

CREATE TABLE `class_registrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `status` enum('active','cancelled','completed') NOT NULL,
  `grade_achieved` tinyint(4) NOT NULL DEFAULT '0',
  `courses_id` int(11) REFERENCES courses(id),
  `classes_id` int(11)  REFERENCES classes(id),
  `students_id` int(11) REFERENCES students(id),
  `instructors_id` int(11) REFERENCES instructors(id)
);

CREATE TABLE `course_prerequisites` (
  `course_id` int(11) REFERENCES courses(id),
  `has_prerequisite` int(11) REFERENCES courses(id),
  `prerequisite_for` int(11) REFERENCES courses(id)
);