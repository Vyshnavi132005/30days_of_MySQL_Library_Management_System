-- ==========================================
-- Day 17 : Issue Records Table
-- Project : Library Management System
-- ==========================================

USE library_management_system;

-- Create Issue Records Table

CREATE TABLE issue_records (
    issue_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    book_id INT,
    issue_date DATE,
    due_date DATE
);

-- Insert Sample Issue Record

INSERT INTO issue_records
(student_id, book_id, issue_date, due_date)
VALUES
(101, 2, '2026-06-14', '2026-06-21');

-- View Issue Records

SELECT * FROM issue_records;