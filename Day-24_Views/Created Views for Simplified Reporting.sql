-- ==========================================
-- Day 24 : Views
-- Project : Library Management System
-- ==========================================

USE library_management_system;

-- Create View for Issued Books

CREATE VIEW issued_books_view AS
SELECT s.student_name,
       b.book_title,
       i.issue_date,
       i.due_date
FROM issue_records i
INNER JOIN students s
ON i.student_id = s.student_id
INNER JOIN books b
ON i.book_id = b.book_id;

-- Display Data from View

SELECT *
FROM issued_books_view;

-- Additional Example:
-- Display Student Name and Borrowed Book

CREATE VIEW student_book_details AS
SELECT s.student_name,
       b.book_title
FROM issue_records i
INNER JOIN students s
ON i.student_id = s.student_id
INNER JOIN books b
ON i.book_id = b.book_id;

SELECT *
FROM student_book_details;