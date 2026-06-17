-- ==========================================
-- Day 20 : LEFT JOIN
-- Project : Library Management System
-- ==========================================

USE library_management_system;

-- Display All Students and Their Borrowed Books

SELECT s.student_name,
       b.book_title,
       i.issue_date
FROM students s
LEFT JOIN issue_records i
ON s.student_id = i.student_id
LEFT JOIN books b
ON i.book_id = b.book_id;

-- Find Students Who Have Not Borrowed Books

SELECT s.student_name
FROM students s
LEFT JOIN issue_records i
ON s.student_id = i.student_id
WHERE i.issue_id IS NULL;