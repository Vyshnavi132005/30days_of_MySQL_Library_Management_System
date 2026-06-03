-- DAY-06

INSERT INTO students
(student_id, student_name, department, year_of_study, joining_date, email)
VALUES
(101, 'Ananya', 'Computer Science', 2, '2026-06-01', 'ananya@gmail.com'),
(102, 'Rahul', 'Information Technology', 3, '2026-06-01', 'rahul@gmail.com'),
(103, 'Priya', 'Electronics', 1, '2026-06-02', 'priya@gmail.com');
select * from students;


INSERT INTO books
(book_title, author_name, category, available_copies)
VALUES
('Database Management Systems', 'Raghu Ramakrishnan', 'Computer Science', 10),
('Learning SQL', 'Alan Beaulieu', 'Database', 8),
('Python Programming', 'John Zelle', 'Programming', 12);

select * from books;