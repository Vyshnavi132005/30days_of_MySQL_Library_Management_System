-- ==========================================
-- Day 08 : WHERE Clause
-- Project : Library Management System
-- ==========================================

USE library_management_system;

-- Find Student by ID

SELECT *
FROM students
WHERE student_id = 101;

-- Find Students from Computer Science Department

SELECT *
FROM students
WHERE department = 'Computer Science';

-- Find Books in Programming Category

SELECT *
FROM books
WHERE category = 'Programming';

-- Find Books with More Than 5 Copies

SELECT *
FROM books
WHERE available_copies > 5;

-- Additional Examples

SELECT *
FROM students
WHERE year_of_study >= 2;

SELECT *
FROM students
WHERE department != 'Computer Science';