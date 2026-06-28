-- ==========================================
-- Day 30 : 30 Days of MySQL Journey Completion
-- Project : Library Management System
-- ==========================================

USE library_management_system;

-- View Students

SELECT * FROM students;

-- View Books

SELECT * FROM books;

-- View Issue Records

SELECT * FROM issue_records;

-- Display Student Borrowing Details

SELECT s.student_name,
       b.book_title,
       i.issue_date,
       i.due_date
FROM issue_records i
INNER JOIN students s
ON i.student_id = s.student_id
INNER JOIN books b
ON i.book_id = b.book_id;

-- Total Registered Students

SELECT COUNT(*) AS total_students
FROM students;

-- Total Books Available

SELECT SUM(available_copies) AS total_available_books
FROM books;

-- Books by Category

SELECT category,
       COUNT(*) AS total_books
FROM books
GROUP BY category;

-- Show Views (if created)

SHOW FULL TABLES
WHERE TABLE_TYPE = 'VIEW';

-- Show Stored Procedures

SHOW PROCEDURE STATUS
WHERE Db = 'library_management_system';

-- Show Triggers

SHOW TRIGGERS;

-- Show Database Users (Privileges)

SHOW GRANTS FOR 'librarian'@'localhost';