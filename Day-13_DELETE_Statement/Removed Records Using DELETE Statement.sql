-- ==========================================
-- Day 13 : DELETE Statement
-- Project : Library Management System
-- ==========================================

USE library_management_system;

-- Verify Student Record Before Deletion

SELECT *
FROM students
WHERE student_id = 103;

-- Delete Student Record

DELETE FROM students
WHERE student_id = 103;

-- Verify Book Record Before Deletion

SELECT *
FROM books
WHERE book_id = 3;

-- Delete Book Record

DELETE FROM books
WHERE book_id = 3;

-- Verify Remaining Records

SELECT * FROM students;
SELECT * FROM books;