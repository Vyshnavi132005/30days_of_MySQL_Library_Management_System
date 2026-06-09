-- ==========================================
-- Day 12 : UPDATE Statement
-- Project : Library Management System
-- ==========================================

USE library_management_system;

-- Update Student Department

UPDATE students
SET department = 'Data Science'
WHERE student_id = 101;

-- Update Student Year of Study

UPDATE students
SET year_of_study = 3
WHERE student_id = 102;

-- Update Available Copies of a Book

UPDATE books
SET available_copies = 15
WHERE book_id = 1;

-- Update Multiple Columns

UPDATE books
SET category = 'Database',
    available_copies = 12
WHERE book_id = 2;



