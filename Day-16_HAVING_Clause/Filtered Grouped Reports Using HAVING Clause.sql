-- ==========================================
-- Day 16 : HAVING Clause
-- Project : Library Management System
-- ==========================================

USE library_management_system;

-- Display Departments Having More Than 1 Student

SELECT department, COUNT(*) AS total_students
FROM students
GROUP BY department
HAVING COUNT(*) > 1;

-- Display Book Categories Having More Than 2 Books

SELECT category, COUNT(*) AS total_books
FROM books
GROUP BY category
HAVING COUNT(*) > 2;

-- Display Categories with More Than 10 Available Copies

SELECT category, SUM(available_copies) AS total_copies
FROM books
GROUP BY category
HAVING SUM(available_copies) > 10;

-- Additional Example

SELECT category,
       COUNT(*) AS total_books,
       SUM(available_copies) AS total_copies
FROM books
GROUP BY category
HAVING SUM(available_copies) > 5;