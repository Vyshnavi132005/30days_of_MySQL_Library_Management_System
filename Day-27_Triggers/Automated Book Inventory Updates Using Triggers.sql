-- ==========================================
-- Day 27 : Triggers
-- Project : Library Management System
-- ==========================================

USE library_management_system;

-- Create Trigger

DELIMITER //

CREATE TRIGGER update_book_copies
AFTER INSERT ON issue_records
FOR EACH ROW
BEGIN
    UPDATE books
    SET available_copies = available_copies - 1
    WHERE book_id = NEW.book_id;
END //

DELIMITER ;

-- Issue a Book

INSERT INTO issue_records
(student_id, book_id, issue_date, due_date)
VALUES
(101, 2, CURDATE(), DATE_ADD(CURDATE(), INTERVAL 7 DAY));

-- Verify Updated Book Copies

SELECT book_id,
       book_title,
       available_copies
FROM books
WHERE book_id = 2;

-- Additional Example

SELECT *
FROM issue_records
ORDER BY issue_date DESC;