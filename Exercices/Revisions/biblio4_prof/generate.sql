DROP DATABASE IF EXISTS biblio4_prof;
CREATE DATABASE biblio4_prof;
USE biblio4_prof;

-- crée une table 'auteur'
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
  titre VARCHAR(1000) NOT NULL,
  langue VARCHAR(50) NULL,
  annee_publication INT NULL,
  nombre_pages INT NOT NULL,
  code_isbn VARCHAR(50) NOT NULL,
  auteur_id INT NOT NULL,
  theme_id INT NULL,
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

-- crée la table 'exemplaire'
CREATE TABLE exemplaire (
  id INT NOT NULL AUTO_INCREMENT,
  reference VARCHAR(50) NOT NULL UNIQUE,
  rayon VARCHAR(50) NOT NULL,
  date_acquisition DATE NOT NULL,
  etat VARCHAR(50) NOT NULL,
  est_perdu BOOLEAN NOT NULL DEFAULT FALSE,
  livre_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (livre_id) REFERENCES livre(id)
);

-- crée la table 'emprunt'
CREATE TABLE emprunt (
  id INT NOT NULL AUTO_INCREMENT,
  date_emprunt DATE NOT NULL,
  date_retour DATE NULL,
  lecteur_id INT NOT NULL,
  exemplaire_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (lecteur_id) REFERENCES lecteur(id),
  FOREIGN KEY (exemplaire_id) REFERENCES exemplaire(id)
);

source functions.sql;

source auteur.sql;

source theme.sql;

source livre.sql;

source lecteur.sql;

SET @nb_exemplaires = (SELECT COUNT(*) FROM livre);
source exemplaire.sql;

SET @nb_emprunts = 100;
source emprunt.sql;