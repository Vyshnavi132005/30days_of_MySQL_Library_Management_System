-- ==========================================
-- Day 09 : Comparison Operators, AND, OR, NOT
-- Project : Library Management System
-- ==========================================

USE library_management_system;

-- Find Computer Science Students in Year 2

SELECT *
FROM students
WHERE department = 'Computer Science'
AND year_of_study = 2;

-- Find Programming or Database Books

SELECT *
FROM books
WHERE category = 'Programming'
OR category = 'Database';

-- Find Books Not in Programming Category

SELECT *
FROM books
WHERE NOT category = 'Programming';

-- Find Books with More Than 5 Copies

SELECT *
FROM books
WHERE available_copies > 5;

-- Additional Comparison Operator Examples

SELECT *
FROM students
WHERE year_of_study >= 2;

SELECT *
FROM students
WHERE year_of_study != 1;