CREATE DATABASE coffee_list;
CREATE TABLE coffee_list.coffee
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30),
    land VARCHAR(30),
    brand VARCHAR(30),
    roast_depth SET('浅煎り','中煎り','深煎り','極深煎り'),
    created_at DATETIME,
    updated_at DATETIME
);