/* On utilise l'encodage UTF8 */
charset utf8;

/*
CREATION DE LA DB ON LA SUPPRIME SI ELLE EXISTE DEJA
Ca permettra de vite relancer le script de création et vous permettre de corriger ici.
Le plus simple est donc de supprimer la base de données pour vous faire gagner du temps.
*/
DROP DATABASE IF EXISTS BlindCode;
CREATE DATABASE BlindCode;

/* On Change de base de données */
use BlindCode;

/*
CREATION DE LA TABLE Formation
On doit créer en premier la table Classe car le champ id, qui est clé primaire de la table classe, sera utilisé dans la table Eleve comme clé étrangère
AUTO_INCREMENT signifie qu'on va laisser le SGBD générer une clef automatique qui va s'incrémenter de 1 à chaque ajout dans la table. Il est à mettre lors de la définition de l'attribut que l'on veut auto-incrémenter.
PRIMARY KEY (id) défini la clé primaire sur le champ id
La creation d'une table se fait par la commande CREATE TABLE
Inspirez-vous de la creation de la table Eleve pour créer la table Classe.
Il doit y avoir comme champs:
id: entier
nom
Lieu
Et évidemment définir l'id comme une clef primaire

N'OUBLIEZ PAS QUE TOUTE INSTRUCTION DANS MYSQL SE TERMINER PAR UN POINT VIRGULE !!!

A vous de jouer ! :)
*/
CREATE TABLE formation (
    id int NOT NULL AUTO_INCREMENT,
    nom varchar(20) NOT NULL,
    lieu varchar(20) NOT NULL,
    PRIMARY KEY(id)
);

/*
CREATION DE LA TABLE ELEVE
On peut créer maintenant la table eleve et faire référence à la clé étrangère formation_id de la table Classe
CHECK(Sexe IN ('M','F'))   Astuce permettant de vérifier que la valeur qui sera insérée dans la DB sera soit 'M' ou 'F'
DEFAULT donne une valeur par défaut. Ici le champ actif est par défaut à 1 (true) car comme on vient de le créer, il est actif.
*/
CREATE TABLE eleve (
    id int NOT NULL AUTO_INCREMENT,
    prenom varchar(20) NOT NULL,
    nom varchar(20) NOT NULL,
    naissance date NOT NULL,
    rn varchar(20) UNIQUE NOT NULL,
    actif boolean NOT NULL DEFAULT 1,
    nationalite varchar(20) NOT NULL,
    rue varchar(50) NOT NULL,
    numero varchar(5) NULL,
    boite varchar(3) NULL,
    cp int NOT NULL,
    localite varchar(30) NOT NULL,
    sexe char(1) NOT NULL CHECK(Sexe IN ('M','F')),
    email varchar(40),
    tel varchar(20),
    gsm varchar(20),
    formation_id int NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (formation_id) REFERENCES formation(id)
);

/*
INSERTION D'ENREGISTREMENTS DANS LA TABLE CLASSE
On doit en premier avoir des classes sans ça, on ne pourrait pas créer des élèves.
En effet, 1 élève fait partie d'1 et une seule classe. Donc la classe doit exister avant.
On va donc ajouter deux classes: la classe BlindCode et la classe BlindCode4Data
On utilise la commande INSERT
Voici la syntaxe:  INSERT INTO LaTable (nomChamp1,nomChamp2,nomChamp3,nomChamp4) VALUES ('valeurNomChamp1','valeurNomChamp2','valeurNomChamp3','valeurNomChamp4');
Vu que vous avez deux classes à ajouter (deux enregistrements), vous devrez écrire deux instructions INSERT INTO. L'une pour la classe BlindCode, l'autre pour BlindCode4Data

N'OUBLIEZ PAS QUE TOUTE INSTRUCTION DANS MYSQL DOIT SE TERMINER PAR UN POINT VIRGULE !!!

A vous de jouer ! :)
*/
INSERT INTO formation (nom, Lieu) VALUES ('BlindCode','BXL');
INSERT INTO formation (nom, Lieu) VALUES ('BlindCodeJava','Mons');

/* Eleve BlindCode BXL */
INSERT INTO eleve (nom, prenom, naissance, rn,actif,nationalite,rue,numero,boite,cp,Localite,Sexe,Email,Tel,GSM, formation_id)
VALUES ('Bouchaïb','Karim','2000-03-30','292928272792',1,'Belge','rue Léopold Courouble','12',NULL,'1030','Schaerbeek','M','Karim.bouchaib2000@gmail.com',NULL, '0487596198',1);

INSERT INTO eleve (nom, prenom, naissance, rn,actif,nationalite,rue,numero,boite,cp,Localite,Sexe,Email,Tel,GSM, formation_id) 
VALUES ('El Gharbi','Amir','1998-07-01','589012345678',1,'Belge','rue de la Perche','9',NULL,'1140','Evere','M','Amiregbpro@hotmail.com',NULL,'+32484414373',1);

INSERT INTO eleve (nom, prenom, naissance, rn, actif, nationalite, rue, numero, boite, cp, Localite, Sexe, Email, Tel, GSM, formation_id) 
VALUES ('Brasseur', 'Baptiste', '1996-09-22', '96092219758', 1, 'Belge', 'Place de Fayt', '5', NULL, '7387', 'Honnelle', 'M', 'baptistebrasseur@yahoo.fr', '065634295', '0473623742', 1);

INSERT INTO eleve (nom, prenom, naissance, rn, actif, nationalite, rue, numero, boite, cp, Localite, Sexe, Email, Tel, GSM, formation_id) 
VALUES ('Todorut', 'Carmen Ramona', '1981-02-07', '81020741226', 1, 'Belge', 'Marcel Gruner', '1', NULL, '1080', 'Bruxelles', 'F', 'carmentodorutz@yahoo.com', NULL, '0491447761', 1);

INSERT INTO eleve (nom, prenom, naissance, rn, actif, nationalite, rue, numero, boite, cp, Localite, Sexe, Email, Tel, GSM, formation_id) 
VALUES ('VELEZ PAEZ', 'ANTHONY', '2004-05-19', '00051944734', 1, 'Belge', 'Chaussée de Wavre', '15', NULL, '1050', 'Ixelles', 'M', 'anthonyvelez274@gmail.com', NULL, '0471546905', 1);

INSERT INTO eleve (nom, prenom, naissance, rn, actif, nationalite, rue, numero, boite, cp, Localite, Sexe, Email, Tel, GSM, formation_id) 
VALUES ('Muratore', 'Filippo', '2002-05-01', '01050205333', 1, 'Belge', 'Avenue Docteur Schweitzer', '179', NULL, '7340', 'Colfontaine', 'M', 'filymuratore@gmail.com', '0498485430', '0498485430', 1);

INSERT INTO eleve (nom, prenom, naissance, rn, actif, nationalite, rue, numero, boite, cp, Localite, Sexe, Email, Tel, GSM, formation_id) 
VALUES ('Elrhanaoui', 'Nabil', '2003-01-16', '03011637520', 1, 'Belge', 'Square Appollo', '1', 1, '1030', 'Schaerbeek', 'M', 'nabillrh2023@gmail.com', NULL, '0487134976', 1);

INSERT INTO eleve (nom, prenom, naissance, rn, actif, nationalite, rue, numero, boite, cp, Localite, Sexe, Email, Tel, GSM, formation_id) 
VALUES ('Ardui', 'Thomas', '1991-01-28', '91012849994', 1, 'Belge', 'Avenue de l’Idéal', '27', '206', '1200', 'Bruxelles', 'M', 'ardui.thomas@gmail.com', NULL, '0478420935', 1);

INSERT INTO eleve (nom, prenom, naissance, rn, actif, nationalite, rue, numero, boite, cp, Localite, Sexe, Email, Tel, GSM, formation_id) 
VALUES ('Honore', 'Christian', '1986-04-16', '78041619790', 1, 'Belge', 'Brascoup', '17', '7', '6220', 'Fleurus', 'M', 'christianhonore16@gmail.com', NULL, '0456321666', 1);

/* Eleve BlindCode Mons */
INSERT INTO eleve (nom, prenom, naissance, rn,actif,nationalite,rue,numero,boite,cp,Localite,Sexe,Email,Tel,GSM, formation_id)
VALUES ('Baloge','Sébastien','1982-08-23','1890098890',1,'Belge','Scailmont','16',NULL,'7110','Houdeng-Goegnies','M','s.baloge@yahoo.fr','064543789','0498098234',2);

INSERT INTO eleve (nom, prenom, naissance, rn,actif,nationalite,rue,numero,boite,cp,Localite,Sexe,Email,Tel,GSM, formation_id)
VALUES ('Dehoust','David','1988-05-02','444719',1,'Belge','rue du Bichon Maltais','111',NULL,'7060','Soignies','M','tanker0205@gmail.com','0836656565','0444561228',2);

INSERT INTO eleve (nom, prenom, naissance, rn,actif,nationalite,rue,numero,boite,cp,Localite,Sexe,Email,Tel,GSM, formation_id)
VALUES ('Desseille','Simon','1999-08-22','0101018272',1,'Belge','Basse-chaussée','22',NULL,'5000','Cognelée','M','simon.desseille@gmail.com','+32b1287421','0473287225',2);

INSERT INTO eleve (nom, prenom, naissance, rn,actif,nationalite,rue,numero,boite,cp,Localite,Sexe,Email,Tel,GSM, formation_id)
VALUES ('Vanneste','Christian','1989-04-25','1989-04-25-89731',1,'Belge','rue du Val','46',NULL,'7700','Mouscron','M','darkrolly@gmail.com','+3256912173','+32493712815',2);

INSERT INTO eleve (nom, prenom, naissance, rn, actif, nationalite, rue, numero, boite, cp, Localite, Sexe, Email, Tel, GSM, formation_id) 
VALUES ('Defalque', 'Bruno', '1979-10-19', '791019-049-43', 1, 'Belge', 'Verte Voie', '54', '3', '1348', 'Louvain-la-Neuve', 'M', 'defalquebruno@gmail.com', NULL, '0472462211',2);

DROP FUNCTION IF EXISTS GetAge;
CREATE FUNCTION GetAge(birthdate date) returns int DETERMINISTIC
return YEAR(CURDATE())-YEAR(birthdate);