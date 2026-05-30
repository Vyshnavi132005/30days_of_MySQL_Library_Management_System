-- =====================================
-- Day 02 : SQL Fundamentals
-- Project : Library Management System
-- =====================================

-- Create Database

CREATE DATABASE library_management_system;

-- Select Database

USE library_management_system;

-- Create Students Table

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    department VARCHAR(50),
    year_of_study INT
);

-- View Table Structure

DESC students;