CREATE TABLE authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    created_at TIMESTAMP
);

CREATE TABLE books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    book_title VARCHAR(200) NOT NULL,
    author_id INT NOT NULL,
    published_at DATE,
    created_at TIMESTAMP,
    FOREIGN KEY (author_id) REFERENCES authors(author_id) 
);