DROP DATABASE users IF EXISTS;
CREATE DATABASE users;
USE users;
CREATE TABLE user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
INSERT INTO user (username, password, email) VALUES ('admin', 'admin', 'admin@localhost');
INSERT INTO user (username, password, email) VALUES ('user', 'user', 'user@localhost');
INSERT INTO user (username, password, email) VALUES ('guest', 'guest', 'guest@localhost');
INSERT INTO user (username, password, email) VALUES ('test', 'test', 'test@localhost');