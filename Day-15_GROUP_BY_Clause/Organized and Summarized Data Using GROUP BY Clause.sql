-- ==========================================
-- Day 15 : GROUP BY Clause
-- Project : Library Management System
-- ==========================================

USE library_management_system;

-- Count Students by Department

SELECT department, COUNT(*) AS total_students
FROM students
GROUP BY department;

-- Count Books by Category

SELECT category, COUNT(*) AS total_books
FROM books
GROUP BY category;

-- Total Available Copies by Category

SELECT category, SUM(available_copies) AS total_copies
FROM books
GROUP BY category;

-- Average Year of Study by Department

SELECT department, AVG(year_of_study) AS average_year
FROM students
GROUP BY department;

-- Additional Example

SELECT category,
       COUNT(*) AS total_books,
       SUM(available_copies) AS total_copies
FROM books
GROUP BY category;