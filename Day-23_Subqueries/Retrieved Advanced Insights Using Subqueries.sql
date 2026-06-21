-- ==========================================
-- Day 23 : Subqueries
-- Project : Library Management System
-- ==========================================

USE library_management_system;

-- Find the Book with the Highest Available Copies

SELECT *
FROM books
WHERE available_copies = (
    SELECT MAX(available_copies)
    FROM books
);

-- Find Students in the Highest Year of Study

SELECT *
FROM students
WHERE year_of_study = (
    SELECT MAX(year_of_study)
    FROM students
);

-- Find Books with More Copies Than the Average

SELECT *
FROM books
WHERE available_copies > (
    SELECT AVG(available_copies)
    FROM books
);

-- Additional Example:
-- Find Books with the Minimum Available Copies

SELECT *
FROM books
WHERE available_copies = (
    SELECT MIN(available_copies)
    FROM books
);