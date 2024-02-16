DROP DATABASE IF EXISTS Biblio;
CREATE DATABASE Biblio;
USE Biblio;
CREATE TABLE auteur
(
    id int Unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom varchar(30) NOT NULL,
    prenom varchar(30) NOT NULL,
    date_naissance date NOT NULL,
    nationalite varchar(20) NOT NULL
);
CREATE TABLE livre
(
    id int Unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
    titre varchar(30) NOT NULL,
    isbn varchar(17) NOT NULL,
    langue varchar(20) NOT NULL,
    annee_publication SMALLINT UNSIGNED NOT NULL,
    pages SMALLINT UNSIGNED NOT NULL,
    exemplaires SMALLINT UNSIGNED,
    auteur_id INT Unsigned NOT NULL,
    CONSTRAINT fk_auteur_id FOREIGN KEY (auteur_id) REFERENCES auteur(id),
    theme_id INT Unsigned NOT NULL,
    CONSTRAINT fk_theme_id FOREIGN KEY (theme_id) REFERENCES theme(id),
    lecteur_id INT Unsigned NOT NULL,
    CONSTRAINT fk_lecteur_id FOREIGN KEY (lecteur_id) REFERENCES lecteur(id)
);
CREATE TABLE theme
(
    id int Unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
    libelle varchar(20) NOT NULL
);
CREATE TABLE lecteur
(
    id int Unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom varchar(30) NOT NULL,
    prenom varchar(30) NOT NULL,
    date_naissance date NOT NULL
);
CREATE TABLE emprunt
(
    id int Unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
    date_debut date NOT NULL,
    date_fin date NOT NULL,
    is_rendu boolean NOT NULL DEFAULT 1,
    livre_id INT Unsigned NOT NULL,
    CONSTRAINT fk_livre_id FOREIGN KEY (livre_id) REFERENCES livre(id),
    lecteur_id INT Unsigned NOT NULL,
    CONSTRAINT fk_lecteur_id FOREIGN KEY (lecteur_id) REFERENCES lecteur(id)
);
INSERT INTO auteur (nom,prenom,date_naissance,nationalite)
VALUES ('Leblanc','Maurice','1888-05-23','Belge');
INSERT INTO auteur (nom,prenom,date_naissance,nationalite)
VALUES ('Wells','Orson','1905-09-18','Anglais');
INSERT INTO auteur (nom,prenom,date_naissance,nationalite)
VALUES ('Coben','Harlan','1985-07-08','Américain');
INSERT INTO auteur (nom,prenom,date_naissance,nationalite)
VALUES ('Kojima','Hideo','1963-06-28','Japonais');
INSERT INTO auteur (nom,prenom,date_naissance,nationalite)
VALUES ('Verne','Jules','1765-05-15','Français');
INSERT INTO livre (titre,isbn,langue,annee_publication,pages,exemplaires,auteur_id,theme_id,lecteur_id)
VALUES ('Arsène Lupin','978-2-7654-0912-0','français',1923,202,12,1,5,2);
INSERT INTO livre (titre,isbn,langue,annee_publication,pages,exemplaires,auteur_id,theme_id,lecteur_id)
VALUES ('1984','974-2-4316-7192-0','anglais',1953,252,6,2,3,3);
INSERT INTO livre (titre,isbn,langue,annee_publication,pages,exemplaires,auteur_id,theme_id,lecteur_id)
VALUES ('Le tour du monde en 80 jours','978-2-3497-1873-0','français',1763,222,2,5,2,1);
INSERT INTO theme (libelle)
VALUES ('Programmation');
INSERT INTO theme (libelle)
VALUES ('Roman');
INSERT INTO theme (libelle)
VALUES ('Science-Fiction');
INSERT INTO theme (libelle)
VALUES ('Thriller');
INSERT INTO theme (libelle)
VALUES ('Policier');
INSERT INTO lecteur (nom,prenom,date_naissance)
VALUES ('Stroghof','Michel','1988-06-28');
INSERT INTO lecteur (nom,prenom,date_naissance)
VALUES ('Grundy','Solomon','1948-04-04');
INSERT INTO lecteur (nom,prenom,date_naissance)
VALUES ('Rias','Mysta','1998-08-18');
INSERT INTO lecteur (nom,prenom,date_naissance)
VALUES ('Crazy','Olivia','2001-01-01');
INSERT INTO lecteur (nom,prenom,date_naissance)
VALUES ('Penrose','Rin','1993-03-23');
INSERT INTO emprunt (date_debut,date_fin,is_rendu,livre_id,lecteur_id)
VALUES ('2020-01-01','2023-05-23',1,1,2);
INSERT INTO emprunt (date_debut,date_fin,is_rendu,livre_id,lecteur_id)
VALUES ('2021-04-05','2022-06-18',0,2,3);
INSERT INTO emprunt (date_debut,date_fin,is_rendu,livre_id,lecteur_id)
VALUES ('2022-07-04','2023-01-13',1,3,1);