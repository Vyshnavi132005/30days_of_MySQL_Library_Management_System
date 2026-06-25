-- ==========================================
-- Day 28 : Transactions
-- Project : Library Management System
-- ==========================================

USE library_management_system;

-- Start Transaction

START TRANSACTION;

-- Insert Issue Record

INSERT INTO issue_records
(student_id, book_id, issue_date, due_date)
VALUES
(102, 1, CURDATE(), DATE_ADD(CURDATE(), INTERVAL 7 DAY));

-- Create Savepoint

SAVEPOINT issue_book;

-- Update Available Copies

UPDATE books
SET available_copies = available_copies - 1
WHERE book_id = 1;

-- Commit Changes

COMMIT;

-- Rollback Example

ROLLBACK;

-- Verify Data

SELECT *
FROM issue_records
ORDER BY issue_id DESC;

SELECT *
FROM books
WHERE book_id = 1;