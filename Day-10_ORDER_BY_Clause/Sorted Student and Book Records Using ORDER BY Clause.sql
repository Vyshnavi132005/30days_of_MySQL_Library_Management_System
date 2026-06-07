-- ==========================================
-- Day 10 : ORDER BY Clause
-- Project : Library Management System
-- ==========================================

USE library_management_system;

-- Display Students by Name (Ascending)

SELECT *
FROM students
ORDER BY student_name ASC;

-- Display Students by Year of Study (Descending)

SELECT *
FROM students
ORDER BY year_of_study DESC;

-- Display Books Alphabetically

SELECT *
FROM books
ORDER BY book_title ASC;

-- Display Books by Available Copies

SELECT *
FROM books
ORDER BY available_copies DESC;

-- Additional Example

SELECT student_name, department
FROM students
ORDER BY department ASC;