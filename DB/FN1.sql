/* On utilise l'encodage UTF8 */
charset utf8;

/*
CREATION DE LA DB ON LA SUPPRIME SI ELLE EXISTE DEJA
Ca permettra de vite relancer le script de création et vous permettre de corriger ici.
Le plus simple est donc de supprimer la base de données pour vous faire gagner du temps.
*/
DROP DATABASE IF EXISTS FN1;
CREATE DATABASE FN1;

/* On Change de base de données */
use FN1;

CREATE TABLE User (
    Id int NOT NULL AUTO_INCREMENT,
    Nom varchar(20) NOT NULL,
    Prenom VARCHAR(20) NOT NULL,
    Password varbinary(255)  NOT NULL,
    Tel VARCHAR(100) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    PRIMARY KEY(Id)
);




