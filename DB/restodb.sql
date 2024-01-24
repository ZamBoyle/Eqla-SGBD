DROP DATABASE IF EXISTS restodb;
CREATE DATABASE restodb;
USE restodb;

CREATE TABLE restodb.client (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    gsm VARCHAR(255) NOT NULL,
    date_naissance DATE NOT NULL,
    rue VARCHAR(255) NOT NULL,
    numero VARCHAR(255) NOT NULL,
    boite VARCHAR(255) NOT NULL,
    code_postal VARCHAR(255) NOT NULL,
    ville VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE restodb.plat_type (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE restodb.plat (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    prix FLOAT NOT NULL,
    plat_type_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_plat_type FOREIGN KEY (plat_type_id) REFERENCES restodb.plat_type(id)
);

CREATE TABLE restodb.commande_type (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE restodb.table (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    number_places INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE restodb.commande (
    id INT NOT NULL AUTO_INCREMENT,
    client_id INT NOT NULL,
    commande_type INT NOT NULL,
    commande_date DATETIME NOT NULL,
    table_id INT,
    PRIMARY KEY (id),
    CONSTRAINT fk_client FOREIGN KEY (client_id) REFERENCES restodb.client(id),
    CONSTRAINT fk_commande_type FOREIGN KEY (commande_type) REFERENCES restodb.commande_type(id),
    CONSTRAINT fk_table FOREIGN KEY (table_id) REFERENCES restodb.table(id)
);

CREATE TABLE restodb.commande_plat (
    id INT NOT NULL AUTO_INCREMENT,
    commande_id INT NOT NULL,
    plat_id INT NOT NULL,
    quantite INT NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_commande FOREIGN KEY (commande_id) REFERENCES restodb.commande(id),
    CONSTRAINT fk_plat FOREIGN KEY (plat_id) REFERENCES restodb.plat(id)
);



INSERT INTO restodb.commande_type (name) VALUES ('Livraison');
INSERT INTO restodb.commande_type (name) VALUES ('Sur place');





