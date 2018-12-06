CREATE TABLE `classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` varchar(100) NOT NULL,
  `schedule` enum('MWF','TTH') NOT NULL,
  `location` varchar(100) NOT NULL,
  `capacity` int(11) NOT NULL,
  `instructors_id` int(11) REFERENCES instructors(id),
  `courses_id` int(11) REFERENCES courses(id)
);

CREATE TABLE `class_registrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `status` enum('active','cancelled','completed') NOT NULL,
  `grade_achieved` tinyint(4) NOT NULL DEFAULT '0',
  `classes_id` int(11) REFERENCES classes(id),
  `students_id` int(11) REFERENCES students(id)
);

CREATE TABLE `course_prerequisites` (
  `course_id` int(11) REFERENCES courses(id),
  `has_prerequisite` int(11) REFERENCES courses(id),
  `prerequisite_for` int(11) REFERENCES courses(id),
  `courses_id` int(11) REFERENCES courses(id)
);

CREATE TABLE `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL
);

CREATE TABLE `instructors` (
  `instructors_id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `instructors_name` varchar(100) NOT NULL,
  `instructors_email` varchar(200) NOT NULL,
  `instructors_phone` varchar(15) DEFAULT NULL
);

CREATE TABLE `instructor_types` (
  `instructors_id` int(11) REFERENCES instructors(id),
  `types` enum('adjunct','graduate','visitng','associate','full') NOT NULL
);

CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `enrollment_date` date NOT NULL,
  `gpa` decimal(4,2) NOT NULL,
  `accumulated_credit_hours` tinyint(4) NOT NULL,
  `class_registrations_id` int(11) REFERENCES class_registrations(id)
);