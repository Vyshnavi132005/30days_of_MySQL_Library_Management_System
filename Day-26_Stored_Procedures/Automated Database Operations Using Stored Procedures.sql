-- ==========================================
-- Day 26 : Stored Procedures
-- Project : Library Management System
-- ==========================================

USE library_management_system;

-- Create Stored Procedure

DELIMITER //

CREATE PROCEDURE GetIssuedBooks()
BEGIN
    SELECT s.student_name,
           b.book_title,
           i.issue_date,
           i.due_date
    FROM issue_records i
    INNER JOIN students s
    ON i.student_id = s.student_id
    INNER JOIN books b
    ON i.book_id = b.book_id;
END //

DELIMITER ;

-- Execute Procedure

CALL GetIssuedBooks();

-- Additional Example Procedure

DELIMITER //

CREATE PROCEDURE GetBooksByCategory()
BEGIN
    SELECT category,
           COUNT(*) AS total_books
    FROM books
    GROUP BY category;
END //

DELIMITER ;

-- Execute Additional Procedure

CALL GetBooksByCategory();