-- ==========================================
-- Day 03 : MySQL Data Types
-- Project : Library Management System
-- ==========================================

-- Select Database

USE library_management_system;

-- Day 02 Students Table

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    department VARCHAR(50),
    year_of_study INT
);

-- Day 03 Updated Students Table

DROP TABLE students;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    department VARCHAR(50),
    year_of_study INT,
    joining_date DATE,
    profile_photo BLOB
);

-- View Table Structure

DESC students;