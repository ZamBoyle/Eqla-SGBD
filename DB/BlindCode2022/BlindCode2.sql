/* On utilise l'encodage UTF8 */
charset utf8;

/*
CREATION DE LA DB ON LA SUPPRIME SI ELLE EXISTE DEJA
Ca permettra de vite relancer le script de création et vous permettre de corriger ici.
Le plus simple est donc de supprimer la base de données pour vous faire gagner du temps.
*/
DROP DATABASE IF EXISTS BlindCode2;
CREATE DATABASE BlindCode2;

/* On Change de base de données */
use BlindCode2;

/*
CREATION DE LA TABLE CLASSE
On doit créer en premier la table Classe car le champ IdClasse, qui est clé primaire de la table classe, sera utilisé dans la table Eleve comme clé étrangère
AUTO_INCREMENT signifie qu'on va laisser le SGBD générer une clef automatique qui va s'incrémenter de 1 à chaque ajout dans la table. Il est à mettre lors de la définition de l'attribut que l'on veut auto-incrémenter.
PRIMARY KEY (IdClasse) défini la clé primaire sur le champ IdClasse
La creation d'une table se fait par la commande CREATE TABLE
Inspirez-vous de la creation de la table Eleve pour créer la table Classe.
Il doit y avoir comme champs:
IdClasse: entier
Nom
Lieu
Et évidemment définir l'IdClasse comme une clef primaire

N'OUBLIEZ PAS QUE TOUTE INSTRUCTION DANS MYSQL SE TERMINER PAR UN POINT VIRGULE !!!

A vous de jouer ! :)
*/
CREATE TABLE Classe (
    IdClasse int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nom varchar(20),
    Lieu varchar(20)
);

/*
CREATION DE LA TABLE ELEVE
On peut créer maintenant la table Eleve et faire référence à la clé étrangère IdClass de la table Classe
CHECK(Sexe IN ('M','F'))   Astuce permettant de vérifier que la valeur qui sera insérée dans la DB sera soit 'M' ou 'F'
DEFAULT donne une valeur par défaut. Ici le champ Actif est par défaut à 1 (true) car comme on vient de le créer, il est actif.
*/
CREATE TABLE Eleve (
    IdEleve int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Prenom varchar(20) NOT NULL,
    Nom varchar(20) NOT NULL,
    Naissance date NOT NULL,    
    RN varchar(20) UNIQUE NOT NULL,
    Actif boolean NOT NULL DEFAULT 1,
    Nationalite varchar(20) NOT NULL,
    Rue varchar(50) NOT NULL,
    Numero varchar(5) NULL,
    Boite varchar(3) NULL,
    CP int NOT NULL,
    Localite varchar(30) NOT NULL,
    Sexe char(1) NOT NULL CHECK(Sexe IN ('M','F')),
    Email varchar(40),
    Tel varchar(20),
    GSM varchar(20)
);
 CREATE TABLE EleveClasse(
     IdEleve int NOT NULL,
     IdClasse int NOT NULL,
     AnneeScolaire int NOT NULL,
     DateInscription date NOT NULL,
     PRIMARY KEY(IdEleve,IdClasse,AnneeScolaire),
     FOREIGN KEY(IdEleve) REFERENCES Eleve(IdEleve),
     FOREIGN KEY(IdClasse) REFERENCES Classe(IdClasse)
 );

INSERT INTO Classe (Nom, Lieu) VALUES ('BlindCode','BXL');
INSERT INTO Classe (Nom, Lieu) VALUES ('BlindCode4Data','LLN');

/* Eleve BlindCode BXL */
INSERT INTO Eleve (Nom, Prenom, Naissance, RN,Actif,Nationalite,Rue,Numero,Boite,CP,Localite,Sexe,Email,Tel,GSM)
VALUES ('SOW','Abdourahim','2000-10-10','001010-49976',1,'Belge','Avenue Docteur Dejase','8',NULL,'1030','Schaerbeek','M','rahimsow1030@gmail.com',NULL,'0465876372');

INSERT INTO Eleve (Nom, Prenom, Naissance, RN,Actif,Nationalite,Rue,Numero,Boite,CP,Localite,Sexe,Email,Tel,GSM)
VALUES ('Diallo','Alpha Oumar','1997-10-04','97100450085',1,'Belge','Sterrenveld','26','126','1970','Wezembeek-Oppem','M','alphaoumard1997@gmail.com',NULL,'0466229776');

INSERT INTO Eleve (Nom, Prenom, Naissance, RN,Actif,Nationalite,Rue,Numero,Boite,CP,Localite,Sexe,Email,Tel,GSM)
VALUES ('Bouchaïb','Karim','2000-03-30','292928272792',1,'Belge','Rue Léopold Courouble','12',NULL,'1030','Schaerbeek','M','Karim.bouchaib2000@gmail.com',NULL, '0487596198');

INSERT INTO Eleve (Nom, Prenom, Naissance, RN,Actif,Nationalite,Rue,Numero,Boite,CP,Localite,Sexe,Email,Tel,GSM) 
VALUES ('El Gharbi','Amir','1998-07-01','589012345678',1,'Belge','Rue de la Perche','9',NULL,'1140','Evere','M','Amiregbpro@hotmail.com',NULL,'+32484414373');

/* Eleve BlindCode Mons */
INSERT INTO Eleve (Nom, Prenom, Naissance, RN,Actif,Nationalite,Rue,Numero,Boite,CP,Localite,Sexe,Email,Tel,GSM)
VALUES ('Baloge','Sébastien','1982-08-23','1890098890',1,'Belge','Scailmont','16',NULL,'7110','Houdeng-Goegnies','M','s.baloge@yahoo.fr','064543789','0498098234');

INSERT INTO Eleve (Nom, Prenom, Naissance, RN,Actif,Nationalite,Rue,Numero,Boite,CP,Localite,Sexe,Email,Tel,GSM)
VALUES ('Dehoust','David','1988-05-02','444719',1,'Belge','Rue du Bichon Maltais','111',NULL,'7060','Soignies','M','tanker0205@gmail.com','0836656565','0444561228');

INSERT INTO Eleve (Nom, Prenom, Naissance, RN,Actif,Nationalite,Rue,Numero,Boite,CP,Localite,Sexe,Email,Tel,GSM)
VALUES ('Desseille','Simon','1999-08-22','0101018272',1,'Belge','Basse-chaussée','22',NULL,'5000','Cognelée','M','simon.desseille@gmail.com','+32b1287421','0473287225');

INSERT INTO Eleve (Nom, Prenom, Naissance, RN,Actif,Nationalite,Rue,Numero,Boite,CP,Localite,Sexe,Email,Tel,GSM)
VALUES ('Vanneste','Christian','1989-04-25','1989-04-25-89731',1,'Belge','rue du Val','46',NULL,'7700','Mouscron','M','darkrolly@gmail.com','+3256912173','+32493712815');


/*On ajoute ces élès dans EleveClasse*/
INSERT INTO EleveClasse (IdEleve,IdClasse, AnneeScolaire, DateInscription) VALUES (1,1,2022,'2022/03/01');
INSERT INTO EleveClasse (IdEleve,IdClasse, AnneeScolaire, DateInscription) VALUES (2,1,2022,'2022/01/01');
INSERT INTO EleveClasse (IdEleve,IdClasse, AnneeScolaire, DateInscription) VALUES (3,1,2022,'2022/01/01');
INSERT INTO EleveClasse (IdEleve,IdClasse, AnneeScolaire, DateInscription) VALUES (4,1,2022,'2022/01/01');
INSERT INTO EleveClasse (IdEleve,IdClasse, AnneeScolaire, DateInscription) VALUES (5,2,2022,'2022/01/01');
INSERT INTO EleveClasse (IdEleve,IdClasse, AnneeScolaire, DateInscription) VALUES (6,2,2022,'2022/01/01');
/*  Simon fait partie des classes BlindCode BXL et BlindCode Mons */
INSERT INTO EleveClasse (IdEleve,IdClasse, AnneeScolaire, DateInscription) VALUES (7,2,2022,'2022/01/01');
INSERT INTO EleveClasse (IdEleve,IdClasse, AnneeScolaire, DateInscription) VALUES (7,1,2022,'2022/01/01');

INSERT INTO EleveClasse (IdEleve,IdClasse, AnneeScolaire, DateInscription) VALUES (8,2,2022,'2022/01/01');

