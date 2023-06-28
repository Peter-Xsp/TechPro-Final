DROP TABLE IF EXISTS `people`;
CREATE TABLE people (
  `PersonID` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  `FirstName` VARCHAR(255) NOT NULL DEFAULT '',
  `LastName` VARCHAR(255) NOT NULL DEFAULT '' ,
  `Email` VARCHAR(255) NOT NULL DEFAULT '' 
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `items`;
CREATE TABLE items (
  `ItemID` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(255) NOT NULL,
  image VARCHAR(1000)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO   items (Name,image) VALUES 
("Lego Harry Potter: Hogwarts Castle","https://a.scdn.gr/images/sku_main_images/016926/16926726/20200218163824_lego_castle_hogwarts_castle_71043.jpeg"),
("lego harry potter the shrieking shack","https://a.scdn.gr/images/sku_main_images/036372/36372850/20220602093808_lego_harry_potter_the_shrieking_shack_whomping_willow_gia_9_eton_76407.jpeg"),
("Lego Harry Potter: 4 Privet Drive","https://d.scdn.gr/images/sku_main_images/023147/23147795/20211122113914_lego_harry_potter_privet_drive_75968.jpeg"),
("Lego Harry Potter: Hogwarts Carriage And Thestrals","https://www.lego.com/cdn/cs/set/assets/bltfbb014c7fd7c66d0/76400_alt1.png");

DROP TABLE IF EXISTS `orders`;
CREATE TABLE orders (
  `OrderID` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `PersonID` INT UNSIGNED NOT NULL,
  `OrderDate` DATETIME NOT NULL,
  FOREIGN KEY (PersonID) REFERENCES people (PersonID)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE order_details (
  `OrderDetailsID` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `OrderID` INT UNSIGNED NOT NULL,
  `ItemID` INT UNSIGNED NOT NULL,
  `Quantity` INT,
  FOREIGN KEY (OrderID) REFERENCES orders (OrderID),
  FOREIGN KEY (ItemID) REFERENCES items (ItemID)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

