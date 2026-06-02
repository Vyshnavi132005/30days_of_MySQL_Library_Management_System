-- DAY_05

CREATE TABLE books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    book_title VARCHAR(100) NOT NULL,
    author_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    available_copies INT DEFAULT 0
);

desc books;
