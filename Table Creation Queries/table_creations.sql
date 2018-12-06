SHOW CREATE TABLE classes;

CREATE TABLE `classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `schedule` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `capacity` int(11) NOT NULL,
  `instructors_id` int(11) DEFAULT NULL,
  `courses_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

SHOW CREATE TABLE class_registrations;

CREATE TABLE `class_registrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `status` enum('active','cancelled','completed') NOT NULL,
  `grade_achieved` tinyint(4) NOT NULL DEFAULT '0',
  `classes_id` int(11) DEFAULT NULL,
  `students_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

SHOW CREATE TABLE course_prerequisites;

CREATE TABLE `course_prerequisites` (
  `courses_id` int(11) DEFAULT NULL,
  `has_prerequisite` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

SHOW CREATE TABLE courses;

CREATE TABLE `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

SHOW CREATE TABLE instructors;

CREATE TABLE `instructors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `instructors_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

SHOW CREATE TABLE instructor_types;

CREATE TABLE `instructor_types` (
  `instructors_id` int(11) DEFAULT NULL,
  `types` enum('adjunct','graduate','visiting','associate','full') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

SHOW CREATE TABLE students;

CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `enrollment_date` date NOT NULL,
  `gpa` decimal(4,2) NOT NULL,
  `accumulated_credit_hours` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `students_name_index` (`name`),
  KEY `students_gpa_index` (`gpa`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

