CREATE DATABASE coffee_list;
CREATE TABLE coffee_list.users
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(32) NOT NULL,
    password VARCHAR(32) NOT NULL,
    deleted_flag BOOLEAN DEFAULT '0',
    created_at DATETIME,
    updated_at DATETIME
);