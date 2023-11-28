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

CREATE TABLE formation (
    id int NOT NULL AUTO_INCREMENT,
    nom varchar(50) NOT NULL,
    lieu varchar(50) NOT NULL,
    annee_scolaire int NOT NULL,
    UNIQUE(nom,lieu,annee_scolaire),
    PRIMARY KEY(id)
);

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
    sexe char(1) NOT NULL CHECK(sexe IN ('M','F')),
    email varchar(40),
    tel varchar(20),
    gsm varchar(20),
    PRIMARY KEY(id)
);

 CREATE TABLE eleve_formation(
     eleve_id int NOT NULL,
     formation_id int NOT NULL,
     date_inscription date NOT NULL,
     PRIMARY KEY(eleve_id,formation_id),
     FOREIGN KEY(eleve_id) REFERENCES eleve(id),
     FOREIGN KEY(formation_id) REFERENCES formation(id)
 );

INSERT INTO formation (nom,annee_scolaire,lieu) VALUES ('BlindCode - Web Developper',2022,'BXL');
INSERT INTO formation (nom,annee_scolaire,lieu) VALUES ('BlindCode - Java',2022,'Mons');
INSERT INTO formation (nom,annee_scolaire,lieu) VALUES ('BlindCode - Web Developper',2023,'BXL');

/* Eleve BlindCode BXL */
INSERT INTO eleve (nom,prenom,naissance,rn,actif,nationalite,rue,numero,boite,cp,localite,sexe,email,tel,gsm)
VALUES ('Bouchaïb','Karim','2000-03-30','292928272792',1,'Belge','Rue Léopold Courouble','12',NULL,'1030','Schaerbeek','M','Karim.bouchaib2000@gmail.com',NULL,'0487596198');

INSERT INTO eleve (nom,prenom,naissance,rn,actif,nationalite,rue,numero,boite,cp,localite,sexe,email,tel,gsm) 
VALUES ('El Gharbi','Amir','1998-07-01','589012345678',1,'Belge','Rue de la Perche','9',NULL,'1140','Evere','M','Amiregbpro@hotmail.com',NULL,'+32484414373');

INSERT INTO eleve (nom,prenom,naissance,rn,actif,nationalite,rue,numero,boite,cp,localite,sexe,email,tel,gsm) 
VALUES ('Brasseur','Baptiste','1996-09-22','96092219758',1,'Belge','Place de Fayt','5',NULL,'7387','Honnelle','M','baptistebrasseur@yahoo.fr','065634295','0473623742');

INSERT INTO eleve (nom,prenom,naissance,rn,actif,nationalite,rue,numero,boite,cp,localite,sexe,email,tel,gsm) 
VALUES ('Todorut','Carmen Ramona','1981-02-07','81020741226',1,'Belge','Marcel Gruner','1',NULL,'1080','Bruxelles','F','carmentodorutz@yahoo.com',NULL,'0491447761');

INSERT INTO eleve (nom,prenom,naissance,rn,actif,nationalite,rue,numero,boite,cp,localite,sexe,email,tel,gsm) 
VALUES ('VELEZ PAEZ','ANTHONY','2004-05-19','00051944734',1,'Belge','Chaussée de Wavre','15',NULL,'1050','Ixelles','M','anthonyvelez274@gmail.com',NULL,'0471546905');

INSERT INTO eleve (nom,prenom,naissance,rn,actif,nationalite,rue,numero,boite,cp,localite,sexe,email,tel,gsm) 
VALUES ('Muratore','Filippo','2002-05-01','01050205333',1,'Belge','Avenue Docteur Schweitzer','179',NULL,'7340','Colfontaine','M','filymuratore@gmail.com','0498485430','0498485430');

INSERT INTO eleve (nom,prenom,naissance,rn,actif,nationalite,rue,numero,boite,cp,localite,sexe,email,tel,gsm) 
VALUES ('Elrhanaoui','Nabil','2003-01-16','03011637520',1,'Belge','Square Appollo','1',1,'1030','Schaerbeek','M','nabillrh2023@gmail.com',NULL,'0487134976');

INSERT INTO eleve (nom,prenom,naissance,rn,actif,nationalite,rue,numero,boite,cp,localite,sexe,email,tel,gsm) 
VALUES ('Ardui','Thomas','1991-01-28','91012849994',1,'Belge','Avenue de l’Idéal','27','206','1200','Bruxelles','M','ardui.thomas@gmail.com',NULL,'0478420935');

INSERT INTO eleve (nom,prenom,naissance,rn,actif,nationalite,rue,numero,boite,cp,localite,sexe,email,tel,gsm) 
VALUES ('Honore','Christian','1986-04-16','78041619790',1,'Belge','Brascoup','17','7','6220','Fleurus','M','christianhonore16@gmail.com',NULL,'0456321666');

/* Eleve BlindCode Mons */
INSERT INTO eleve (nom,prenom,naissance,rn,actif,nationalite,rue,numero,boite,cp,localite,sexe,email,tel,gsm)
VALUES ('Baloge','Sébastien','1982-08-23','1890098890',1,'Belge','Scailmont','16',NULL,'7110','Houdeng-Goegnies','M','s.baloge@yahoo.fr','064543789','0498098234');

INSERT INTO eleve (nom,prenom,naissance,rn,actif,nationalite,rue,numero,boite,cp,localite,sexe,email,tel,gsm)
VALUES ('Dehoust','David','1988-05-02','444719',1,'Belge','Rue du Bichon Maltais','111',NULL,'7060','Soignies','M','tanker0205@gmail.com','0836656565','0444561228');

INSERT INTO eleve (nom,prenom,naissance,rn,actif,nationalite,rue,numero,boite,cp,localite,sexe,email,tel,gsm)
VALUES ('Desseille','Simon','1999-08-22','0101018272',1,'Belge','Basse-chaussée','22',NULL,'5000','Cognelée','M','simon.desseille@gmail.com','+32b1287421','0473287225');

INSERT INTO eleve (nom,prenom,naissance,rn,actif,nationalite,rue,numero,boite,cp,localite,sexe,email,tel,gsm)
VALUES ('Vanneste','Christian','1989-04-25','1989-04-25-89731',1,'Belge','rue du Val','46',NULL,'7700','Mouscron','M','darkrolly@gmail.com','+3256912173','+32493712815');

INSERT INTO eleve (nom,prenom,naissance,rn,actif,nationalite,rue,numero,boite,cp,localite,sexe,email,tel,gsm) 
VALUES ('Defalque','Bruno','1979-10-19','791019-049-43',1,'Belge','Verte Voie','54','3','1348','Louvain-la-Neuve','M','defalquebruno@gmail.com',NULL,'0472462211');

/*On ajoute ces élès dans EleveFormation*/
/*BlindCode BXL 2023*/
INSERT INTO eleve_formation (eleve_id,formation_id,date_inscription) VALUES (1,3,'2023/09/01');
INSERT INTO eleve_formation (eleve_id,formation_id,date_inscription) VALUES (2,3,'2023/09/01');
INSERT INTO eleve_formation (eleve_id,formation_id,date_inscription) VALUES (3,3,'2023/09/01');
INSERT INTO eleve_formation (eleve_id,formation_id,date_inscription) VALUES (4,3,'2023/09/01');
INSERT INTO eleve_formation (eleve_id,formation_id,date_inscription) VALUES (5,3,'2023/09/01');
INSERT INTO eleve_formation (eleve_id,formation_id,date_inscription) VALUES (6,3,'2023/09/01');
INSERT INTO eleve_formation (eleve_id,formation_id,date_inscription) VALUES (7,3,'2023/09/01');
INSERT INTO eleve_formation (eleve_id,formation_id,date_inscription) VALUES (8,3,'2023/09/01');
INSERT INTO eleve_formation (eleve_id,formation_id,date_inscription) VALUES (9,3,'2023/09/01');

/*BlindCode Mons 2022*/
INSERT INTO eleve_formation (eleve_id,formation_id,date_inscription) VALUES (1,2,'2022/09/01');
INSERT INTO eleve_formation (eleve_id,formation_id,date_inscription) VALUES (2,2,'2022/09/01');
INSERT INTO eleve_formation (eleve_id,formation_id,date_inscription) VALUES (10,2,'2022/09/01');
INSERT INTO eleve_formation (eleve_id,formation_id,date_inscription) VALUES (11,2,'2022/09/01');
INSERT INTO eleve_formation (eleve_id,formation_id,date_inscription) VALUES (12,2,'2022/09/01');
INSERT INTO eleve_formation (eleve_id,formation_id,date_inscription) VALUES (13,2,'2022/09/01');
/*  Bruno fait partie des classes BlindCode BXL et BlindCode Mons */
INSERT INTO eleve_formation (eleve_id,formation_id,date_inscription) VALUES (14,2,'2022/09/01');
INSERT INTO eleve_formation (eleve_id,formation_id,date_inscription) VALUES (14,1,'2022/09/01');