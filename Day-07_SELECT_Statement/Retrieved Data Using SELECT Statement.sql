-- ==========================================
-- Day 07 : SELECT Statement
-- Project : Library Management System
-- ==========================================

USE library_management_system;

-- View All Students

SELECT * FROM students;

-- View All Books

SELECT * FROM books;

-- View Student Names and Departments

SELECT student_name, department
FROM students;

-- View Unique Book Categories

SELECT DISTINCT category
FROM books;

-- View Book Title and Available Copies

SELECT book_title, available_copies
FROM books;