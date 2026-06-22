-- ==========================================
-- Day 25 : Indexes
-- Project : Library Management System
-- ==========================================

USE library_management_system;

-- Create Index on Student Name

CREATE INDEX idx_student_name
ON students(student_name);

-- Create Index on Book Title

CREATE INDEX idx_book_title
ON books(book_title);

-- Search Student by Name

SELECT *
FROM students
WHERE student_name = 'Ananya';

-- Search Book by Title

SELECT *
FROM books
WHERE book_title = 'Learning SQL';

-- Additional Example

SELECT student_id,
       student_name,
       department
FROM students
WHERE student_name = 'Rahul';

SELECT book_id,
       book_title,
       category
FROM books
WHERE book_title = 'Python Programming';