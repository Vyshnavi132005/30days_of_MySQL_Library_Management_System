-- ==========================================
-- Day 21 : RIGHT JOIN Clause
-- Project : Library Management System
-- ==========================================

USE library_management_system;

-- Display All Books and Borrowing Details

SELECT b.book_title,
       s.student_name,
       i.issue_date
FROM issue_records i
RIGHT JOIN books b
ON i.book_id = b.book_id
LEFT JOIN students s
ON i.student_id = s.student_id;

-- Display Books Never Issued

SELECT b.book_title
FROM issue_records i
RIGHT JOIN books b
ON i.book_id = b.book_id
WHERE i.issue_id IS NULL;

-- Display Books and Due Dates

SELECT b.book_title,
       s.student_name,
       i.due_date
FROM issue_records i
RIGHT JOIN books b
ON i.book_id = b.book_id
LEFT JOIN students s
ON i.student_id = s.student_id;

-- Additional Example

SELECT b.book_title,
       COUNT(i.issue_id) AS total_issues
FROM issue_records i
RIGHT JOIN books b
ON i.book_id = b.book_id
GROUP BY b.book_title;