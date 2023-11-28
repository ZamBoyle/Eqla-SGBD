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
    annee_scolaire int NOT NULL,
    date_inscription date NOT NULL,
    PRIMARY KEY(eleve_id,formation_id,annee_scolaire),
    FOREIGN KEY(eleve_id) REFERENCES eleve(id),
    FOREIGN KEY(formation_id) REFERENCES formation(id)
);

CREATE TABLE cours(
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom varchar(50) NOT NULL,
    description varchar(1000) NOT NULL
);

CREATE TABLE formateur(
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom varchar(20) NOT NULL,
    prenom varchar(20) NOT NULL,
    naissance date NOT NULL,
    email varchar(40),
    tel varchar(20)
);

CREATE TABLE cours_prerequis(
    cours_id int NOT NULL,
    cours_prerequis_id int NOT NULL,
    PRIMARY KEY(cours_id,cours_prerequis_id),
    FOREIGN KEY(cours_id) REFERENCES cours(id),
    FOREIGN KEY(cours_prerequis_id) REFERENCES cours(id)
);

 CREATE TABLE cours_formation(
    cours_id int NOT NULL,
    formation_id int NOT NULL,
    formateur_id int NOT NULL,
    annee_scolaire int NOT NULL,
    PRIMARY KEY(cours_id,formation_id,formateur_id,annee_scolaire),
    FOREIGN KEY(formateur_id) REFERENCES formateur(id),
    FOREIGN KEY(formation_id) REFERENCES formation(id)
 );

INSERT INTO formation (nom,lieu) VALUES ('BlindCode - Web Developper','BXL');
INSERT INTO formation (nom,lieu) VALUES ('BlindCode - Java','Mons');

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
INSERT INTO eleve_formation (eleve_id,formation_id,annee_scolaire,date_inscription) VALUES (1,1,2023,'2023/09/01');
INSERT INTO eleve_formation (eleve_id,formation_id,annee_scolaire,date_inscription) VALUES (2,1,2023,'2023/09/01');
INSERT INTO eleve_formation (eleve_id,formation_id,annee_scolaire,date_inscription) VALUES (3,1,2023,'2023/09/01');
INSERT INTO eleve_formation (eleve_id,formation_id,annee_scolaire,date_inscription) VALUES (4,1,2023,'2023/09/01');
INSERT INTO eleve_formation (eleve_id,formation_id,annee_scolaire,date_inscription) VALUES (5,1,2023,'2023/09/01');
INSERT INTO eleve_formation (eleve_id,formation_id,annee_scolaire,date_inscription) VALUES (6,1,2023,'2023/09/01');
INSERT INTO eleve_formation (eleve_id,formation_id,annee_scolaire,date_inscription) VALUES (7,1,2023,'2023/09/01');
INSERT INTO eleve_formation (eleve_id,formation_id,annee_scolaire,date_inscription) VALUES (8,1,2023,'2023/09/01');
INSERT INTO eleve_formation (eleve_id,formation_id,annee_scolaire,date_inscription) VALUES (9,1,2023,'2023/09/01');

/* BlindCode Mons 2022 */
INSERT INTO eleve_formation (eleve_id,formation_id,annee_scolaire,date_inscription) VALUES (1,1,2022,'2022/09/01');
INSERT INTO eleve_formation (eleve_id,formation_id,annee_scolaire,date_inscription) VALUES (2,1,2022,'2022/09/01');
INSERT INTO eleve_formation (eleve_id,formation_id,annee_scolaire,date_inscription) VALUES (10,1,2022,'2022/09/01');
INSERT INTO eleve_formation (eleve_id,formation_id,annee_scolaire,date_inscription) VALUES (11,1,2022,'2022/09/01');
INSERT INTO eleve_formation (eleve_id,formation_id,annee_scolaire,date_inscription) VALUES (12,2,2022,'2022/09/01');
INSERT INTO eleve_formation (eleve_id,formation_id,annee_scolaire,date_inscription) VALUES (13,2,2022,'2022/09/01');

/* Bruno fait partie des classes BlindCode BXL et BlindCode Mons */
INSERT INTO eleve_formation (eleve_id,formation_id,annee_scolaire,date_inscription) VALUES (14,2,2022,'2022/09/01');
INSERT INTO eleve_formation (eleve_id,formation_id,annee_scolaire,date_inscription) VALUES (14,1,2022,'2022/09/01');

/* On ajoute les formateurs */
INSERT INTO formateur (nom,prenom,naissance,email,tel) VALUES ('Piette','Johnny','1974-03-07','johnny.piette@eqla.be','0479/59.14.95');
INSERT INTO formateur (nom,prenom,naissance,email,tel) VALUES ('Dupont','Philip','1974-03-07','philip.dupont@eqla.be','0479/59.14.95');

/* On ajoute les cours */
INSERT INTO cours (nom,description) VALUES ('HTML','HTML est un langage de description de pages Web.');
INSERT INTO cours (nom,description) VALUES ('CSS','CSS est un langage de style qui permet de mettre en forme des documents HTML.');
INSERT INTO cours (nom,description) VALUES ('Javascript','JavaScript est un langage de programmation de scripts principalement employé dans les pages web interactives mais aussi pour les serveurs avec l''utilisation (par exemple) de Node.js.');
INSERT INTO cours (nom,description) VALUES ('PHP','PHP est un langage de programmation libre, principalement utilisé pour produire des pages Web dynamiques via un serveur HTTP, mais pouvant également fonctionner comme n''importe quel langage interprété de façon locale.');
INSERT INTO cours (nom,description) VALUES ('Java','Java est un langage de programmation orienté objet créé par James Gosling et Patrick Naughton, employés de Sun Microsystems, avec le soutien de Bill Joy (cofondateur de Sun Microsystems en 1982), présenté officiellement le 23 mai 1995 au SunWorld.');
INSERT INTO cours (nom,description) VALUES ('SQL','SQL est un langage informatique normalisé servant à exploiter des bases de données relationnelles. La partie langage de manipulation des données de SQL permet de rechercher, d''ajouter, de modifier ou de supprimer des données dans les bases de données relationnelles.');
INSERT INTO cours (nom,description) VALUES ('Bootstrap','Bootstrap est une collection d''outils utiles à la création du design (graphisme, animation et interactions avec la page dans le navigateur, etc.) de sites et d''applications web. C''est un ensemble qui contient des codes HTML et CSS, des formulaires, boutons, outils de navigation et autres éléments interactifs, ainsi que des extensions JavaScript en option.');
INSERT INTO cours (nom,description) VALUES ('Accessibilité numérique','L''accessibilité numérique vise à permettre l''accès à tout internaute, en particulier aux personnes en situation de handicap, quel que soit le type de matériel utilisé pour se connecter (ordinateur de bureau, ordinateur portable, tablette tactile, téléphone mobile, console de jeux, télévision connectée, etc.) et les modalités de navigation (clavier, souris, pavé tactile, écran tactile, commande vocale, etc.).');
INSERT INTO cours (nom,description) VALUES ('Laravel','Laravel est un framework web open-source écrit en PHP respectant le principe modèle-vue-contrôleur et entièrement développé en programmation orientée objet.');
INSERT INTO cours (nom,description) VALUES ('Anglais','Cours d''anglais axé sur le vocabulaire informatique et les termes techniques.');
INSERT INTO cours (nom,description) VALUES ('Recherche emploi','Cours d''aide à la recherche d''emploi.');
INSERT INTO cours (nom,description) VALUES ('Python','Python est un langage de programmation interprété, multi-paradigme et multiplateformes. Il favorise la programmation impérative structurée, fonctionnelle et orientée objet.');

/* On ajoute les cours prérequis */
INSERT INTO cours_prerequis (cours_id,cours_prerequis_id) VALUES (2,1);
INSERT INTO cours_prerequis (cours_id,cours_prerequis_id) VALUES (3,1);

/* On ajoute les cours aux formations */
INSERT INTO cours_formation (cours_id,formation_id,formateur_id,annee_scolaire) VALUES (1,1,1,2023);
INSERT INTO cours_formation (cours_id,formation_id,formateur_id,annee_scolaire) VALUES (2,1,1,2023);
INSERT INTO cours_formation (cours_id,formation_id,formateur_id,annee_scolaire) VALUES (3,1,1,2023);