DROP DATABASE IF EXISTS biblio;
CREATE DATABASE biblio;
USE biblio;


CREATE TABLE auteur (
  id INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR(50) NOT NULL,
  prenom VARCHAR(50) NOT NULL,
  date_naissance DATE NULL,
  nationalite VARCHAR(50) NULL,
  PRIMARY KEY (id)
);

-- crée une table 'theme'
CREATE TABLE theme (
  id INT NOT NULL AUTO_INCREMENT,
  theme VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);

-- crée une table 'livre' liée à la table 'auteur' par la clé étrangère 'auteur_id'
CREATE TABLE livre (
  id INT NOT NULL AUTO_INCREMENT,
  titre VARCHAR(50) NOT NULL,
  langue VARCHAR(50) NOT NULL,
  annee_publication INT NOT NULL,
  nombre_pages INT NOT NULL,
  nombre_exemplaires INT NULL,
  code_isbn VARCHAR(50) NOT NULL,
  auteur_id INT NOT NULL,
  theme_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (auteur_id) REFERENCES auteur(id),
  FOREIGN KEY (theme_id) REFERENCES theme(id)
);

-- crée la table 'lecteur'
CREATE TABLE lecteur (
  id INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR(50) NOT NULL,
  prenom VARCHAR(50) NOT NULL,
  date_naissance DATE NOT NULL,
  adresse VARCHAR(50) NOT NULL,
  num_rue INT NOT NULL,
  code_postal INT NOT NULL,
  localite VARCHAR(50) NOT NULL,
  telephone VARCHAR(50) NOT NULL, 
  PRIMARY KEY (id)
);

-- crée la table 'emprunt'
CREATE TABLE emprunt (
  id INT NOT NULL AUTO_INCREMENT,
  date_emprunt DATE NOT NULL,
  date_retour DATE NOT NULL,
  lecteur_id INT NOT NULL,
  livre_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (lecteur_id) REFERENCES lecteur(id),
  FOREIGN KEY (livre_id) REFERENCES livre(id)
);


source auteur;

source theme;
source livre.sql; 

