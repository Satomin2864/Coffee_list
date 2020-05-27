CREATE TABLE coffee_list.past_drinked_coffees
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    how_to_grind ENUM("極細挽き","細挽き","中細挽き","中挽き","粗挽き"),
    deleted_flag BOOLEAN DEFAULT '0' NOT NULL,
    comment VARCHAR(255),
    created_at DATETIME,
    updated_at DATETIME,
    cofee_beans_id INT,
    CONSTRAINT fk_cofee_beans_id
        FOREIGN KEY (cofee_beans_id)
        REFERENCES cofee_beans (id)
        -- TODO:ここの制約に関して検討する
        ON DELETE RESTRICT ON UPDATE RESTRICT
);
