
CREATE DATABASE SchoolLibraryDB;


USE SchoolLibraryDB;


CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);


CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    book_name VARCHAR(150) NOT NULL,
    author VARCHAR(100),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);


CREATE INDEX idx_book_name ON books(book_name);


INSERT INTO categories (category_name) VALUES
('Fiction'),
('Science'),
('History'),
('Mathematics'),
('Biography');


INSERT INTO books (book_name, author, category_id) VALUES
('To Kill a Mockingbird', 'Harper Lee', 1),
('The Great Gatsby', 'F. Scott Fitzgerald', 1),
('A Brief History of Time', 'Stephen Hawking', 2),
('The Selfish Gene', 'Richard Dawkins', 2),
('Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 3),
('The Art of War', 'Sun Tzu', 3),
('Calculus Made Easy', 'Silvanus P. Thompson', 4),
('The Man Who Knew Infinity', 'Robert Kanigel', 5);


SHOW INDEX FROM books;


SELECT 
    b.book_id,
    b.book_name,
    b.author,
    c.category_name
FROM books b
JOIN categories c ON b.category_id = c.category_id;
