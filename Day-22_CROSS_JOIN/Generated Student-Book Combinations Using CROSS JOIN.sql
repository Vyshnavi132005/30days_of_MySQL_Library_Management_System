-- ==========================================
-- Day 22 : CROSS JOIN
-- Project : Library Management System
-- ==========================================

USE library_management_system;

-- Display All Student and Book Combinations

SELECT s.student_name,
       b.book_title
FROM students s
CROSS JOIN books b;

-- Count Total Possible Combinations

SELECT COUNT(*) AS total_combinations
FROM students
CROSS JOIN books;

-- Additional Example

SELECT s.student_id,
       s.student_name,
       b.book_id,
       b.book_title
FROM students s
CROSS JOIN books b;