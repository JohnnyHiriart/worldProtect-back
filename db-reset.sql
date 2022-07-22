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
     `email` VARCHAR(100)  NULL,
     `date`  TIMESTAMP  NULL,
    `commentText` VARCHAR(255) NOT NULL
);


INSERT INTO products (idPerfume, productImage, productName, productTheme, productDesc)
VALUES 
('1', 'https://firebasestorage.googleapis.com/v0/b/worldprotect-73087.appspot.com/o/sapin.jpg?alt=media&token=e4571a9f-621c-4027-b819-56e6dac44c44','sapin', 'noel', 'savon en forme de sapin de noel'),
('1', 'https://firebasestorage.googleapis.com/v0/b/worldprotect-73087.appspot.com/o/ourson.jpg?alt=media&token=c9930de8-2d41-4c80-a4f2-d6b24dfa2b52','ourson', 'noel', 'savon en forme de petit ourson tout mignon'),
('1', 'https://firebasestorage.googleapis.com/v0/b/worldprotect-73087.appspot.com/o/bonhommeNeige.jpg?alt=media&token=ae3f9e7f-2fe5-4c6f-80df-c8cb8847e6d4','neige', 'noel', 'savon en forme de bonhomme de neige'),
('1', 'https://firebasestorage.googleapis.com/v0/b/worldprotect-73087.appspot.com/o/biscuit.jpg?alt=media&token=f074e7ab-338f-41fa-afe7-108379491519','biscuit', 'noel', 'savon en forme de petit biscuit de noel'),
('1', 'https://firebasestorage.googleapis.com/v0/b/worldprotect-73087.appspot.com/o/rose.jpg?alt=media&token=aae3c4d9-a9e3-47ba-b420-62a6cc9bb88c','rose', 'fleur', 'savon en forme de petite rose des bois'),
('1', 'https://firebasestorage.googleapis.com/v0/b/worldprotect-73087.appspot.com/o/lotus.jpg?alt=media&token=14967e25-fdd9-4ff3-a7b8-8641bc8092a6','lotus', 'fleur', 'savon en forme de magnifique fleur du lotus'),
('1', 'https://firebasestorage.googleapis.com/v0/b/worldprotect-73087.appspot.com/o/tournesol.jpg?alt=media&token=ac92e24c-067e-4865-8ef2-fd7eda72b1be','tournesol', 'fleur', 'savon en forme de jolie tournesol parfait pour en faire de l huile'),
('1', 'https://firebasestorage.googleapis.com/v0/b/worldprotect-73087.appspot.com/o/rectangle.jpg?alt=media&token=518af6fd-80f9-4115-b6b8-20092a73a0bc','rectangle', 'forme géométrique', 'savon en forme de pavé triangulaire'),
('1', 'https://firebasestorage.googleapis.com/v0/b/worldprotect-73087.appspot.com/o/coeur.jpg?alt=media&token=11d9fa84-b39a-458b-bbd0-60f01fe84c88','coeur', 'forme géométrique', 'savon en forme de petit coeur'),
('1', 'https://firebasestorage.googleapis.com/v0/b/worldprotect-73087.appspot.com/o/carr%C3%A9.jpg?alt=media&token=13fd0d23-7899-4b8f-80e7-692450f26325','carré', 'forme géométrique', 'savon en forme de carré parfait pour le rangement'),
('1', 'https://firebasestorage.googleapis.com/v0/b/worldprotect-73087.appspot.com/o/%C3%A9toile.jpg?alt=media&token=dbbcd972-b65e-4636-93f5-56bcf236cf83','étoile', 'forme géométrique', 'savon en forme d étoile');


INSERT INTO perfumes (perfumeName,perfumeColor)
VALUES
('vanille', 'jaune'),
('noix de coco', 'blanc'),
('canelle', 'marron'),
('rose', 'rose');

INSERT INTO comments (pseudo, date, email,commentText)
 VALUES
 ('Abussos64',NOW(),'abussos64@gmail.com','Super idée !! A refaire !'),
 ('Abussos64',NOW(),'abussos64@gmail.com','Super idée !! A refaire !');