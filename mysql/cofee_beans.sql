CREATE TABLE coffee_list.cofee_beans
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30),
    land VARCHAR(30),
    brand VARCHAR(30),
    roast_depth ENUM('浅煎り','中煎り','深煎り','極深煎り'),
    deleted_flag BOOLEAN DEFAULT '0',
    created_at DATETIME,
    updated_at DATETIME,
    users_id INT, 
    CONSTRAINT fk_users_id
        FOREIGN KEY (users_id)
        REFERENCES users (id)
        -- TODO:ここの制約に関して検討する
        ON DELETE RESTRICT ON UPDATE RESTRICT
);
