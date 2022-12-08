/* On utilise l'encodage UTF8 */
/*
CREATION DE LA DB ON LA SUPPRIME SI ELLE EXISTE DEJA
Ca permettra de vite relancer le script de création et vous permettre de corriger ici.
Le plus simple est donc de supprimer la base de données pour vous faire gagner du temps.
*/
DROP DATABASE IF EXISTS Tests;

CREATE DATABASE Tests;
use Tests;
CREATE TABLE Equipe
(
		Id int NOT NULL primary key auto_increment,
        NomClub varchar(30) NOT NULL,
        Localite varchar(30) NOT NULL,
        Division int not null
);

CREATE TABLE Joueur
(
	Id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nom varchar(30) NOT NULL,
    Prenom varchar(30) NOT NULL,
    DateNaissance DATE NOT NULL,
    IdEquipe int NOT NULL,
    FOREIGN KEY (IdEquipe) REFERENCES Equipe(Id)
);


INSERT INTO Equipe(NomClub, Localite, Division) VALUES ('Royal Club d''Andenne','Andenne',2);
INSERT INTO Equipe(NomClub, Localite, Division) VALUES ('Standard','Liège',3);
INSERT INTO Joueur(Nom, Prenom, DateNaissance, IdEquipe) VALUES('Colin','Pierre', '2018/07/22',1);
INSERT INTO Joueur(Nom, Prenom, DateNaissance, IdEquipe) VALUES('Jacques','Gabriel', '2014/08/22',2);
INSERT INTO Joueur(Nom, Prenom, DateNaissance, IdEquipe) VALUES('Dupont','Philip', '1991/12/13',2);


-- Combien de joueurs ont moins de 20 ans ?
SELECT COUNT(*) FROM Joueur WHERE DateNaissance > DATE_SUB(NOW(), INTERVAL 20 YEAR);




