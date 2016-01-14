DROP DATABASE IF EXISTS winkel;

CREATE DATABASE winkel;

USE winkel;

CREATE TABLE Product(
	ProductID INT NOT NULL AUTO_INCREMENT,
    ProductCode VARCHAR(10) NOT NULL DEFAULT '',
    ProductDescription VARCHAR(100) NOT NULL DEFAULT '',
    ProductPrice DECIMAL(7,2) NOT NULL DEFAULT '0.00',
    
    PRIMARY KEY (ProductID)
);

INSERT INTO Product VALUES
	('1', 'CP01', 'Canned Possum', '20.00'),
    ('2', 'FP01', 'Free Paper', '10.00'),
    ('3', 'LC01', 'Lightsaber Chopsticks', '99.00'),
    ('4', 'PA01', 'Pink Arduino', '400.00'),
    ('5', 'SD01', 'Sir Grapefellow', '79.99'),
    ('6', 'SP01', 'Spotted Dick', '120.00');

    