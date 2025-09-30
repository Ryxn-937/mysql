CREATE DATABASE BookStoreDB;
USE BookStoreDB;
CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    name VARCHAR(100),
    country VARCHAR(100)
);
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(200),
    price DECIMAL(10,2),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

INSERT INTO authors (author_id, name, country) VALUES
(1, 'J.K. Rowling', 'United Kingdom'),
(2, 'George R.R. Martin', 'United States'),
(3, 'Haruki Murakami', 'China'),
(4, 'Paulo Coelho', 'Brazil'),
(5, 'Agatha Christie', 'United Kingdom');

INSERT INTO books (book_id, title, price, author_id, published_year) VALUES
(101, 'Harry Potter and the Sorcerer''s Stone', 499.00, 1, 1997),
(102, 'A Game of Thrones', 699.00, 2, 1996),
(103, 'Norwegian Wood', 399.00, 3, 1987),
(104, 'The Alchemist', 350.00, 4, 1988),
(105, 'Murder on the Orient Express', 450.00, 5, 1934);


ALTER TABLE books
ADD published_year INT;
DELETE FROM books;
DROP DATABASE BookStoreDB;
