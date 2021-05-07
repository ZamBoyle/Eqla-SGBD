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
CREATION DE LA TABLE CLASSE
On doit créer en premier la table Classe car le champ IdClasse, qui est clé primaire de la table classe, sera utilisé dans la table Eleve comme clé étrangère
AUTO_INCREMENT signifie qu'on va laisser le SGBD générer une clef automatique qui va s'incrémenter de 1 à chaque ajout dans la table. Il est à mettre lors de la définition de l'attribut que l'on veut auto-incrémenter.
PRIMARY KEY (IdClasse) défini la clé primaire sur le champ IdClasse
La creation d'une table se fait par la commande CREATE TABLE
Inspirez-vous de la creation de la table Eleve pour créer la table Classe.
Il doit y avoir comme champs:
IdClasse
Nom
Lieu
Et évidemment définir l'IdClasse comme une clef primaire
A vous de jouer ! :)
*/




/*
CREATION DE LA TABLE ELEVE
On peut créer maintenant la table Eleve et faire référence à la clé étrangère IdClass de la table Classe
CHECK(Sexe IN ('M','F'))   Astuce permettant de vérifier que la valeur qui sera insérée dans la DB sera soit
DEFAULT donne une valeur par défaut. Ici le champ Actif est par défaut à 1 (true) car comme on vient de le créer, il est actif.
*/
CREATE TABLE Eleve (
    IdEleve int NOT NULL AUTO_INCREMENT,
    Prenom varchar(20) NOT NULL,
    Nom varchar(20) NOT NULL,
    Naissance date NOT NULL,    
    RN varchar(20) UNIQUE NOT NULL,
    Actif boolean NOT NULL DEFAULT '1',
    Nationalite varchar(20) NOT NULL,
    Rue varchar(50) NOT NULL,
    Numero varchar(5) NULL,
    Boite varchar(3) NULL,
    CP int NOT NULL,
    Localite varchar(30) NOT NULL,
    Sexe char(1) NOT NULL CHECK(Sexe IN ('M','F')),
    Email varchar(40),
    Tel varchar(20),
    GSM varchar(20),
    IdClasse int NOT NULL,
    PRIMARY KEY (IdEleve),
    FOREIGN KEY (IdClasse) REFERENCES Classe(IdClasse) 
);

/*
INSERTION D'ENREGISTREMENTS DANS LA TABLE CLASSE
On doit en premier avoir des classes sans ça, on ne pourrait pas créer des élèves.
En effet, 1 élève fait partie d'1 et une seule classe. Donc la classe doit exister avant.
On va donc ajouter deux classes: la classe BlindCode et la classe BlindCode4Data
On utilise la commande INSERT
Voici la syntaxe:  INSERT INTO LaTable (nomChamp1,nomChamp2,nomChamp3,nomChamp4) VALUES ('valeurNomChamp1','valeurNomChamp2''valeurNomChamp3''valeurNomChamp4');
Vu que vous avez deux classes à ajouter (deux enregistrements), vous devrez écrire deux instructions INSERT INTO. L'une pour la classe BlindCode, l'autre pour BlindCode4Data

N'OUBLIEZ PAS QUE TOUTE INSTRUCTION DANS MYSQL SE TERMINER PAR UN POINT VIRGULE !!!

A vous de jouer ! :)
*/


/*
INSERTION D'ENREGISTREMENTS DANS LA TABLE ELEVE
On va ajouter 2 élèves qui sont dans la classe BlindCode (Bruno & Isaac)
Pour le premier Eleve:
Prenom: Bruno
Nom: Defalque
Naissance: 1980-08-15
RN: 45455457
Rue: Rue des Potes
Nationalite: belge
Numero: 1
CP: 4000 
Localite: Liège
Sexe: M
Email: defalquebruno@gmail.com
GSM: 0472 46 22 11
IdClasse: 1 (1 devrait correspondre à BlindCode si vous avez ajoutez en premier BlindCode avant BlindCode4Data

Pour le deuxième Eleve:
Prenom: Isaac
Nom: Tcheuyassi
Naissance: 1987-12-27
RN: 887711
Rue: Rue des codeurs fous
Numero: 14
CP: 5000
Localite: Namur
Sexe: M
Email: tcheuyassiisaac@yahoo.com
GSM: 0476 78 67 69
IdClasse: 1
*/

/*
Ajouter les personnes de votre groupe dans la table Eleve
*/





/*
Dans mysql exécuter le script avec la commande source fichier.sql;
*/


























