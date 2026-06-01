-- DAY_-04
ALTER TABLE students
MODIFY student_name VARCHAR(100) NOT NULL;

ALTER TABLE students
MODIFY department VARCHAR(50) NOT NULL;

alter table students
add email varchar(100);

ALTER TABLE students
ADD CONSTRAINT unique_email UNIQUE(email);

desc students;