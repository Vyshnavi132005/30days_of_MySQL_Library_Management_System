-- ==========================================
-- Day 11 : LIMIT Clause
-- Project : Library Management System
-- ==========================================

USE library_management_system;

-- Display First 3 Students

SELECT *
FROM students
LIMIT 3;

-- Display Top 2 Books with Highest Available Copies

SELECT *
FROM books
ORDER BY available_copies DESC
LIMIT 2;

-- Display First 5 Books Alphabetically

SELECT *
FROM books
ORDER BY book_title ASC
LIMIT 5;

-- Additional Example

SELECT student_name, department
FROM students
ORDER BY student_name ASC
LIMIT 2;