-- ==========================================
-- Day 19 : INNER JOIN
-- Project : Library Management System
-- ==========================================

USE library_management_system;

-- Display Students and Their Borrowed Books

SELECT s.student_name,
       b.book_title,
       i.issue_date,
       i.due_date
FROM issue_records i
INNER JOIN students s
ON i.student_id = s.student_id
INNER JOIN books b
ON i.book_id = b.book_id;

-- Additional Example

SELECT s.student_id,
       s.student_name,
       b.book_title
FROM issue_records i
INNER JOIN students s
ON i.student_id = s.student_id
INNER JOIN books b
ON i.book_id = b.book_id;