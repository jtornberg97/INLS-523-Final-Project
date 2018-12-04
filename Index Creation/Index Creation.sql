CREATE INDEX grade_achieved_index
	ON class_registrations(grade_achieved);

CREATE INDEX name_index
	ON classes(name);
    
CREATE INDEX name_index
	ON classes(name);

CREATE INDEX location_index
	ON classes(location);

CREATE INDEX capacity_index
	ON classes(capacity);
    
CREATE INDEX name_index
	ON courses(name);
    
CREATE INDEX description_index
	ON courses(description);

CREATE INDEX type_index
	ON instructor_types(type);

CREATE INDEX name_index
	ON instructors(name);
    
CREATE INDEX email_index
	ON instructors(email);

CREATE INDEX name_index
	ON students(name);

CREATE INDEX email_index
	ON students(email);
    
CREATE INDEX gpa_index
	ON students(gpa);