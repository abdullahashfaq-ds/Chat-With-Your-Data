DROP DATABASE IF EXISTS chatbot;
CREATE DATABASE chatbot;
USE chatbot;

CREATE TABLE User (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Blog (
    blog_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    title VARCHAR(200) NOT NULL,
    content TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

INSERT INTO User (username, email, password) VALUES
('john_doe', 'john@example.com', 'password123'),
('jane_doe', 'jane@example.com', 'password456');

INSERT INTO Blog (user_id, title, content) VALUES
(1, 'First Blog Post', 'This is the content of the first blog post.'),
(1, 'Second Blog Post', 'This is the content of the second blog post.'),
(2, 'Jane\'s Blog Post', 'This is the content of Jane\'s blog post.');

SELECT * FROM User;
SELECT * FROM Blog;