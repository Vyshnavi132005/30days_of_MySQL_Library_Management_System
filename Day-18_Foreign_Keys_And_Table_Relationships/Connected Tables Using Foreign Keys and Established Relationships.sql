-- ===================================================
-- Day 18 : Foreign Keys and Table Relationships
-- Project : Library Management System
-- ===================================================

USE library_management_system;

-- Create Issue Records Table with Foreign Keys

CREATE TABLE issue_records (
    issue_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    book_id INT,
    issue_date DATE,
    due_date DATE,

    FOREIGN KEY (student_id)
    REFERENCES students(student_id),

    FOREIGN KEY (book_id)
    REFERENCES books(book_id)
);

-- Insert Sample Borrowing Record

INSERT INTO issue_records
(student_id, book_id, issue_date, due_date)
VALUES
(101, 2, '2026-06-15', '2026-06-22');

-- View Borrowing Records

SELECT * FROM issue_records;