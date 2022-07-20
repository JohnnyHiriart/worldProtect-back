CREATE DATABASE Soap;

USE Soap;


DROP TABLE IF EXISTS `Soap`.`comments`;

DROP TABLE IF EXISTS `Soap`.`perfumes`;

DROP TABLE IF EXISTS `Soap`. `products`;
CREATE TABLE IF NOT EXISTS `Soap`.`products`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `idPerfume` INT NOT NULL,
    `productImage` TEXT NOT NULL,
    `productName` VARCHAR(100) NOT NULL,
    `productTheme` VARCHAR(100) NOT NULL,
    `productDesc` TEXT NULL
);

CREATE TABLE IF NOT EXISTS `Soap`.`perfumes`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `perfumeName` VARCHAR(100) NOT NULL,
    `perfumeColor` VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS `Soap`.`comments`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `pseudo` VARCHAR(100) NOT NULL,
     `email` VARCHAR(100) NOT NULL,
    `CommentText` VARCHAR(255) NOT NULL
);


INSERT INTO products (idPerfume, productImage, productName, productTheme, productDesc)
VALUES 
('1', 'image1','sapin', 'noel', 'savon en forme de sapin de noel'),
('1', 'image2','ourson', 'noel', 'savon en forme de petit ourson tout mignon'),
('1', 'image3','neige', 'noel', 'savon en forme de bonhomme de neige'),
('1', 'image4','biscuit', 'noel', 'savon en forme de petit biscuit de noel'),
('1', 'image5','rose', 'fleur', 'savon en forme de petite rose des bois'),
('1', 'image6','lotus', 'fleur', 'savon en forme de magnifique fleur du lotus'),
('1', 'image7','tournesol', 'fleur', 'savon en forme de jolie tournesol parfait pour en faire de l huile'),
('1', 'image8','rectangle', 'forme géométrique', 'savon en forme de pavé triangulaire'),
('1', 'image9','coeur', 'forme géométrique', 'savon en forme de petit coeur'),
('1', 'image10','carré', 'forme géométrique', 'savon en forme de carré parfait pour le rangement'),
('1', 'image11','étoile', 'forme géométrique', 'savon en forme d étoile');


INSERT INTO perfumes (perfumeName,perfumeColor)
VALUES
('vanille', 'jaune'),
('noix de coco', 'blanc'),
('canelle', 'marron'),
('rose', 'rose');

INSERT INTO comments (pseudo,email,commentText)
 VALUES
 ('Abussos64','abussos64@gmail.com','Super idée !! A refaire !');