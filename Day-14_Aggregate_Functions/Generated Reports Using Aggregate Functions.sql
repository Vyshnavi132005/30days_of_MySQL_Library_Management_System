-- ==========================================
-- Day 14 : Aggregate Functions
-- Project : Library Management System
-- ==========================================

USE library_management_system;

-- Total Number of Students

SELECT COUNT(*) AS total_students
FROM students;

-- Total Number of Books Available

SELECT SUM(available_copies) AS total_books
FROM books;

-- Average Year of Study of Students

SELECT AVG(year_of_study) AS average_year
FROM students;

-- Minimum Available Copies

SELECT MIN(available_copies) AS minimum_copies
FROM books;

-- Maximum Available Copies

SELECT MAX(available_copies) AS maximum_copies
FROM books;

-- Additional Aggregate Example

SELECT
    COUNT(*) AS total_books,
    SUM(available_copies) AS total_copies,
    MIN(available_copies) AS lowest_stock,
    MAX(available_copies) AS highest_stock
FROM books;