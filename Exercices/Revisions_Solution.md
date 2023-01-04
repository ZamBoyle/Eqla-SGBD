# Exercices de révisions.
<!--
Vu que certains mettent leurs exercices dans des fichiers et que je demande parfois par exercice plusieurs choses, on peut utiliser la commande SELECT pour afficher quelque chose sans l'utilisation de FROM.
Exemple:
```sql
  
USE Pays;
SELECT 'Exercice 1.2';
SELECT * FROM continent \p;

```
Dans l'exemple précédent notez que j'ai mis un \p avant le ; cela permet d'afficher la requête complètre à l'écran avant de l'exécuter. Ce qui est très utile lorsque vous appelez votre exercice via la commande SOURCE;

Ou bien, vous pouvez créer une colonne indiquant la partie de l'exercice.
```sql
  
USE Pays;
SELECT '1.2' AS Exercice , continent.* FROM continent \p;
SELECT '1.3' AS Exercice , Pays.name FROM Pays WHERE code='be'\p;

```

C'est une proposition, pas une obligation. ;-)
-->
## Exercice 1
### 1.1 DB Pays
1. Afficher la colonne name que l'on renommera Nom à l'affichage de la table Pays où les pays ont un nom commençant par 'u';
```sql
SELECT name AS Nom 
FROM Pays 
WHERE name LIKE 'u%';
```
2. Reprenez la requête précédente et classer par ordre décroissant les noms de pays.
```sql
SELECT name AS Nom 
FROM Pays 
WHERE name LIKE 'u%'
ORDER BY name DESC;
```
3. Maintenant par ordre croissant.
```sql
SELECT name AS Nom 
FROM Pays 
WHERE name LIKE 'u%'
ORDER BY name ASC;
```
4. Affichez les pays dont le nom se terminent par %ca';
```sql
SELECT name AS Nom 
FROM Pays 
WHERE name LIKE '%ca';
```
5. Affichez le nombre de pays de la précédente requête.
```sql
SELECT COUNT(*) 
FROM Pays 
WHERE name LIKE '%ca';
```
6. Affichez les pays qui commencent par 'e' et qui se terminent par 'a' et enfin qui contiennent un 't'. Vous utiliserez 3 LIKE;
```sql
SELECT *
FROM Pays 
WHERE name LIKE 'e%' AND name LIKE '%t%' AND name LIKe '%a';
```
7. Même chose mais vous n'utiliserez qu'un seul LIKE.
```sql
SELECT *
FROM Pays 
WHERE name LIKE 'e%t%a';
```
8. Compter le nombre total de pays.
```sql
SELECT COUNT(*) 
FROM Pays;
```
9. Affichez les pays dont l'Id_Pays est compris entre 20 et 43;
```sql
SELECT *
FROM Pays
WHERE Id_Pays BETWEEN 20 AND 43;
```
10. Idem mais trouvez une autre méthode pour faire votre condition.
```sql
SELECT *
FROM Pays
WHERE Id_Pays >= 20 AND Id_Pays<=43;
```
11. Affichez les noms de pays où l'Id_Pays est inférieur à 48 ou supérieur à 125.
```sql
SELECT *
FROM Pays
WHERE Id_Pays < 48 AND Id_Pays>125;
```
12. Affichez les noms de pays où le code pays est compris dans cette liste de valeurs: BE, FR, LU, NL.
```sql
SELECT *
FROM Pays
WHERE CODE IN ('BE','FR','LU','NL');
```

### 1.2 DB Localites
1. Quelle est la commune ayant la plus petite Latitude ?
```sql
SELECT Commune 
FROM Localite
ORDER BY Latitude ASC
LIMIT 1;
```
2. Quelle est la plus grande Longitude sur les communes ayant un CP dans les 1000 ?
```sql
SELECT Commune 
FROM Localite
WHERE CP BETWEEN 1000 AND 1999
ORDER BY Longitude DESC
LIMIT 1;
```
Ou bien on peut "tricher" et utiliser un LIKE et manipuler un entier comme une string.
```sql
SELECT Commune 
FROM Localite
WHERE CP LIKE '1%'
ORDER BY Longitude DESC
LIMIT 1;
```
3. Quelle est la moyenne des Latitudes ?
```sql
SELECT AVG(Latitude) moyenne_latitude
FROM Localite;
```
4. Groupez les longitudes et leurs nombres. Le nombre sera affiché nb.
```sql
SELECT Longitude, COUNT(*) AS nb
FROM Localite
GROUP BY Longitude;
```
5. Reprenez votre requête différente et ajoutez HAVING nb >1. Que se passe-t-il à votre avis ?
```sql
SELECT Longitude, COUNT(*) AS nb
FROM Localite
GROUP BY Longitude
HAVING nb >1;
```
6. Quelle est la différence entre **WHERE** et **HAVING** ?  

Voici un résumé de la différence entre **WHERE** et **HAVING** :
- La clause **WHERE** peut être utilisée pour filtrer les lignes d'une table avant de regrouper celles-ci avec une clause **GROUP BY**.
- La clause **HAVING** peut être utilisée pour filtrer les groupes de lignes créées par une clause **GROUP BY**.
- La clause **WHERE** filtre les lignes avant le regroupement, tandis que la clause **HAVING** filtre les groupes de lignes créés par le regroupement.

<!--
### 1.3 DB BlindCode
1. 
-->
## Exercice 2 - CREATION de la DB Biblio
### 1. Intro
Ici le but de l'exercice est de modéliser les tables pour la gestion des emprunts de livres dans une bibliothèques.

Nous allons y aller lentement et petit à petit on va complexifier aux prochains exercices.

### 2. Création de la base de données
Premièrement, vous allez donc créer une base de données nommée Biblio.
```sql
CREATE DATABASE Biblio;
```
On peut aussi supprimer la base de données si elle existe déjà:
```sql
DROP DATABASE IF EXISTS Biblio;
CREATE DATABASE Biblio;
```
### 3. Créations des tables
Je ne vais pas vous donner les clefs primaires et étrangères, vous devrez les trouver.

Je ne vous donnerai pas l'ordre de création des tables non plus. Vous êtes grands maintenant. :-)
> - auteur
> - theme
> - livre
> - lecteur
> - emprunt
#### 3.1 Table Livre
Vous allez créez la table **Livre** avec une clef primaire et peut-être une clef étrangère. Devra s'y trouver:
- Titre
- Son [ISBN](https://www.isbn-international.org/fr/content/l%E2%80%99attribution-de-l%E2%80%99isbn)
- Langue du livre
- Année de publication
- Nombre de pages
- Nombre d'exemplaires

Un livre est écrit par un seul auteur.
Un livre porte sur un thème.
Un livre peut être emprunté 0 ou plusieurs fois.

```sql
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
```

#### 3.2 Table Auteur
Vous allez créez la table **Auteur** avec une clef primaire et peut-être une clef étrangère. Devra s'y trouver:
- Le nom 
- Le prenom
- La date de naissance
- La nationalité

Un auteur peut avoir écrit 0 ou plusieurs livres.
```sql
CREATE TABLE auteur (
  id INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR(50) NOT NULL,
  prenom VARCHAR(50) NOT NULL,
  date_naissance DATE NULL,
  nationalite VARCHAR(50) NULL,
  PRIMARY KEY (id)
);
```

#### 3.3 Table Theme
Vous allez créez la table **Theme** avec une clef primaire et peut-être une clef étrangère. Devra s'y trouver:
- libelle 

Un thème porte sur 0 ou plusieurs livres.
```sql
CREATE TABLE theme (
  id INT NOT NULL AUTO_INCREMENT,
  theme VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);
```

#### 3.4 Table Lecteur
Vous allez créez la table **Lecteur** avec une clef primaire et peut-être une clef étrangère. Devra s'y trouver:
- Nom
- Prenom
- Naissance

Un lecteur a emprunté 0 ou plusieurs livres.
```sql
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
```
### 3.5 Table Emprunt
Vous allez créez la table **Emprunt** avec une clef primaire et peut-être une clef étrangère. Devra s'y trouver:
- Date début.
- Date fin.
- Rendu (O/N).

Un livre est emprunté par un et un seul lecteur.
Un emprunt concerne 1 et seul livre.
```sql
CREATE TABLE emprunt (
  id INT NOT NULL AUTO_INCREMENT,
  date_emprunt DATE NOT NULL,
  date_retour DATE NULL,
  lecteur_id INT NOT NULL,
  exemplaire_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (lecteur_id) REFERENCES lecteur(id)
);
```

### 4. Insertion des données
A nouveau, vous devez trouvez l'ordre d'insertion dans les bases de données.
Rappelez-vous l'exercice sur les joueurs de foot. Pour pouvoir ajouter un joueur on devait avoir créé avant l'équipe dans laquelle il joue (IdEquipe).

#### 4.1 Ajout de livres dans la table Livre
Ajoutez 3 livres.
```sql
insert into livre (titre, annee_publication, nombre_pages, code_isbn, auteur_id) values ('Conspirators of Pleasure (Spiklenci slasti)', 1996, 189, '891755755-4', 435);
insert into livre (titre, annee_publication, nombre_pages, code_isbn, auteur_id) values ('Ghost Ship, The', null, 730, '810124811-0', 290);
insert into livre (titre, annee_publication, nombre_pages, code_isbn, auteur_id) values ('Remarkable Power', 2007, 993, '782773505-3', 423);
```
#### 4.2 Ajout de lecteurs dans la table Lecteur
Ajoutez 5 lecteurs.
```sql
INSERT INTO lecteur (nom, prenom, date_naissance, adresse, num_rue, code_postal, localite, telephone) VALUES ('Leblanc', 'Jean', '1980-01-01', 'Rue de la Paix', 1, 1000, 'Bruxelles', '02/111.11.11');
INSERT INTO lecteur (nom, prenom, date_naissance, adresse, num_rue, code_postal, localite, telephone) VALUES ('Dupont', 'Jeanne', '1980-01-01', 'Rue de la Corolle', 36, 1000, 'Bruxelles', '02/111.11.11');
INSERT INTO lecteur (nom, prenom, date_naissance, adresse, num_rue, code_postal, localite, telephone) VALUES ('Durand', 'Philip', '1980-01-01', 'Rue de la Libération', 1, 1000, 'Bruxelles', '02/111.11.11');
INSERT INTO lecteur (nom, prenom, date_naissance, adresse, num_rue, code_postal, localite, telephone) VALUES ('Martin', 'Paul', '1980-01-01', 'Rue de la Statue', 1, 1000, 'Bruxelles', '02/111.11.11');
INSERT INTO lecteur (nom, prenom, date_naissance, adresse, num_rue, code_postal, localite, telephone) VALUES ('Dubois', 'Christophe', '1980-01-01', 'Rue du Pont', 1, 1000, 'Bruxelles', '02/111.11.11');
```
#### 4.3 Ajout d'emprunts dans la table Emprunt
Ajoutez 3 Emprunts par des lecteurs différents et des livres différents.
```sql
INSERT INTO emprunt (date_emprunt, date_retour, lecteur_id, livre_id) VALUES ('2022-05-05',NULL,2,1);
INSERT INTO emprunt (date_emprunt, date_retour, lecteur_id, livre_id) VALUES ('2022-05-09',NULL,1,2);
INSERT INTO emprunt (date_emprunt, date_retour, lecteur_id, livre_id) VALUES ('2022-05-14',NULL,3,3);
```
#### 4.4 Ajout de thèmes dans la table Theme
Ajoutez 5 thèmes: Programmation, Roman, Science-Fiction, Thriller et Policier.

```sql
INSERT INTO theme (libelle) VALUES ('Aventure'),('Fantastique'),('Policier'),('Science-fiction'),('Roman');
```

#### 4.5 Ajout de auteurs dans la table Auteur
Ajoutez 5 auteurs.
```sql
INSERT INTO auteur (titre, date_acquisition, nationalite) VALUES ('Leven','Holli','1959-07-24','espagnol');
INSERT INTO auteur (titre, date_acquisition, nationalite) VALUES ('Mauchline','Gabe','1975-04-03','allemand');
INSERT INTO auteur (titre, date_acquisition, nationalite) VALUES ('Silwood','Vaughan','1983-08-02','belge');
INSERT INTO auteur (titre, date_acquisition, nationalite) VALUES ('Kitchener','Merline','1978-02-28','allemand');
INSERT INTO auteur (titre, date_acquisition, nationalite) VALUES ('Cattermull','Levi','1990-01-21','russe')
```

## Exercice 3 - CREATION de la DB biblio2
- La différence entre cette base de données (biblio2) et biblio c'est que maintenant un livre peut avoir un ou plusieurs auteurs.
- Une fois que vous aurez trouvé comment faire, pour deux des précédents livres faites en sorte qu'ils aient 2 auteurs.

## Exercice 4 - ALTER TABLE & UPDATE
### 4.1 UPDATE TABLE
- Modifier la table lecteur et ajouter une colonne date_inscription.
- Dans un premier temps, vous permettrez l'ajout de la valeur NULL.

 ```sql
 ALTER TABLE lecteur
 ADD date_inscription DATE NULL;
 ```
### 4.2  UPDATE
- Mettez la date_inscription pour tout le monde au '01-01-01': En effet, de cette manière lorsque l'on verra cette date '01-01-01' on saura que ces lecteurs n'avait pas de date_inscription.
```sql
 ALTER TABLE lecteur
 MODIFY COLUMN date_inscription DATE DEFAULT '01-01-01' NULL;
```

## 4.3 ALTER TABLE
- Modifier la table lecteur et modifier la colonne date_inscription.
- Vous définirez que la colonne date_inscription ne permet pas les NULL
```sql
 ALTER TABLE lecteur
 MODIFY COLUMN date_inscription DATE DEFAULT '01-01-01' NOT NULL;
```
## Exercice 5 - Naming Convention - CREATION de la DB Biblio3
- Utiliser la convention de nommage pour toute la création de la base de données biblio3 en vous basant sur biblio2.
> voir le fichier biblio4_prof.sql plus loin dans les exercices.
## Exercice 6 - Table Exemplaire - CREATION de la DB Biblio4
- La différence entre biblio3 et biblio4, c'est que maintenant il y a une table exemplaire.

### 6.1 Table exemplaire
Vous allez créez la table **exemplaire** avec une clef primaire et peut-être une clef étrangère. Devra s'y trouver:
- reference
- rayon
- date_acquisition
- etat
- est_perdu

Un exemplaire correspond à 1 et 1 seul livre.
Un exemplaire a été emprunté aucune fois ou plusieurs fois.

```sql
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
```
### 6.2 Table livre
On supprimera de la table livre le champ: nombre d'exemplaires (pourquoi ?)
On supprimera de la table livre le champ date achat si vous l'aviez mis.

Un livre peut avoir 1 ou plusieurs exemplaires.

```sql
ALTER TABLE livre
DROP COLUMN nombre_exemplaires,
DROP COLUMN date_achat;
```
> On peut supprimer le nombre d'exemplaires de la table livre car il suffira maintenant de compter le nombre d'exemplaires liés à un livre donné.

### 6.3 Table emprunt
La différence c'est que l'emprunt portera maintenant sur un exemplaire de livre et nom directement sur le livre.

Un emprunt porte sur 1 et 1 seul exemplaire.

```sql
ALTER TABLE emprunt
DROP COLUMN livre_id,
ADD COLUMN exemplaire_id INT NOT NULL,
ADD CONSTRAINT fk_emprunt_exemplaire FOREIGN KEY(exemplaire_id) REFERENCES exemplaire(id);
```
> Ici, vous pouvez voir que j'ai fait plusieurs opérations séparées par des virgules.

## Exercice 3 - DB biblio4_prof
### 3.1 Importation de la DB 
1. Télécharger la base de données [biblio4_prof](https://raw.githubusercontent.com/ZamBoyle/Eqla-SGBD/master/Exercices/Revisions/biblio4_prof/backup_biblio4_prof.sql).
2. Mettez-la dans le répertoire avec les autres bases de données: pays.sql, blindcode.sql, etc.
3. Faites un source backup_biblio4_prof.sql
4. Comment pourriez-vous vérifier que la nouvelle base de données biblio4_prof existe bien dans mariadb ?
5. Utilisez la base de données biblio4_prof

> Pour voir si une db est bien présente, on peut utiliser la commande SHOW DATABASES;

### 3.2 Exercices
1. Afficher la liste de tous les livres avec leur titre et leur theme.
```sql
SELECT titre, theme
FROM livre
INNER JOIN theme ON livre.theme_id = theme_id;
```
2. Combien d'exemplaires sont empruntés en ce moment ?
```sql
SELECT COUNT(*)
FROM emprunt
WHERE date_retour IS NULL;
```
3. Quel est le lecteur qui a emprunté le plus de livres ? (Affichez le nom, prénom et le nombre de livres). Indice: nous avons vu comment limiter le nombre de résultat et classer le résultat par ordre croissant/décroissant.
```sql
SELECT nom, prenom, COUNT(*) as nb_livres_empruntes
FROM emprunt
INNER JOIN lecteur ON emprunt.lecteur_id = lecteur.id
GROUP BY lecteur.id
ORDER BY nb_livres_empruntes DESC
LIMIT 1;
```
4. Quel est le livre qui a été le plus emprunté ? Emprunts tout confondus: en cours ou passés. Affichez le titre et le nombre de fois qu'il a été emprunté. Utilisez une colonne nb_emprunts.
```sql
SELECT titre, COUNT(*) AS nb_emprunts
FROM emprunt
INNER JOIN exemplaire ON emprunt.exemplaire_id = exemplaire.id
INNER JOIN livre on exemplaire.livre_id = livre.id
GROUP BY livre.id
ORDER BY nb_emprunts DESC
LIMIT 1;
```
5. Afficher la liste des exemplaires empruntés par le lecteur ayant l'ID 1. On affichera le nom du lecteur, son prénom, le nom du livre, la date d'emprunt ainsi que la date retour.
```sql
SELECT nom, prenom, titre, date_emprunt, date_retour
FROM emprunt
INNER JOIN lecteur ON emprunt.lecteur_id = lecteur.id
INNER JOIN exemplaire ON emprunt.exemplaire_id = exemplaire.id
INNER JOIN livre ON exemplaire.livre_id = livre.id
WHERE emprunt.lecteur_id = 1;
```
6. Idem mais affichez en plus le nom et le prénom de l'auteur. Il faudra faire attention qu'on ne puisse pas hésiter à la lecture si ce sont les noms et prénoms des lecteurs/auteurs.
```sql
SELECT lecteur.nom AS nom_lecteur, lecteur.prenom AS prenom_lecteur, auteur.nom AS auteur_nom, auteur.prenom AS auteur_prenom, titre, date_emprunt, date_retour
FROM emprunt
INNER JOIN lecteur ON emprunt.lecteur_id = lecteur.id
INNER JOIN exemplaire ON emprunt.exemplaire_id = exemplaire.id
INNER JOIN livre ON exemplaire.livre_id = livre.id
INNER JOIN auteur ON livre.auteur_id = auteur.id
WHERE emprunt.lecteur_id = 1;
```
7. Afficher la liste des livres ayant un auteur né avant le 1er janvier 1980.
```sql
SELECT titre
FROM livre
INNER JOIN auteur ON livre.auteur_id = auteur.id
WHERE auteur.date_naissance <'01-01-1980';
```
Il n'y a donc aucun auteur dans notre exemple né avant le 01/01/1980.
8. Afficher tous les champs de la table livre des livres ayant au moins un exemplaire.
Ici, on part du principe que notre jointure entre livre et exemplaire donnera la liste des livres ayants au moins un exemplaire.
```sql
SELECT titre
FROM livre
INNER JOIN exemplaire;
```
9. Afficher la liste des auteurs ayant une nationalité 'française'.
```sql
SELECT nom, prenom
FROM auteur
WHERE nationalite='français';
```
10. Afficher la liste des auteurs ayant un nom commençant par la lettre 'M'.
```sql
SELECT nom, prenom
FROM auteur
WHERE nom LIKE 'M%';
```
11. Afficher la liste des auteurs ayant un prénom comportant plus de 5 caractères. Aidez-vous de Google pour trouver la fonction à utiliser.
```sql
SELECT nom, prenom
FROM auteur
WHERE LENGTH(nom) >5;
```
12. Afficher la liste des auteurs dont le nom ou le prénom comporte la lettre 'e'.
```sql
SELECT nom, prenom
FROM auteur
WHERE nom LIKE '%e%' OR prenom LIKE '%e%';
```
13. Afficher la liste des auteurs avec leur nom, prénom et l'âge qu'ils ont.
```sql
SELECT nom, prenom, YEAR(CURDATE())-YEAR(date_naissance)
FROM auteur;
```
14. Afficher la liste des exemplaires actuellement empruntés avec le nom et prénom de l'emprunteur.
```sql
SELECT nom, prenom, titre
FROM emprunt
INNER JOIN lecteur ON emprunt.lecteur_id = lecteur.id
INNER JOIN exemplaire ON emprunt.exemplaire_id = exemplaire.id
INNER JOIN livre ON livre.id = exemplaire.livre_id
WHERE date_retour IS NULL;
```
15. Combien d'exemplaires y a-t-il du livre suivant:Charlie Chan's Murder Cruise
```sql
SELECT COUNT(*)
FROM livre
INNER JOIN exemplaire ON exemplaire.livre_id = livre.id
WHERE titre='Charlie Chan''s Murder Cruise';
```
16. Quels sont les livres qui ont été empruntés au moins 2 fois ? Indice: Agrégat et HAVING
```sql
SELECT titre, COUNT(*) AS nb_emprunts
FROM livre
INNER JOIN exemplaire ON exemplaire.livre_id = livre.id
INNER JOIN emprunt ON emprunt.exemplaire_id = exemplaire.id
GROUP BY livre.id
HAVING nb_emprunts >=2;
```
17. Reprenez la requête précédente et modifiez la pour n'avoir que les emprunts en cours.
```sql
SELECT titre, COUNT(*) AS nb_emprunts
FROM livre
INNER JOIN exemplaire ON exemplaire.livre_id = livre.id
INNER JOIN emprunt ON emprunt.exemplaire_id = exemplaire.id
WHERE date_retour IS NULL
GROUP BY livre.id
HAVING nb_emprunts >=2;
```
18. Combien d'exemplaires sont empruntés en ce moment portant sur le thème Fantastique ?
```sql
SELECT COUNT(*) AS nb_emprunts
FROM livre
INNER JOIN exemplaire ON exemplaire.livre_id = livre.id
INNER JOIN emprunt ON emprunt.exemplaire_id = exemplaire.id
INNER JOIN theme ON theme.id = livre.theme_id
WHERE theme = 'Fantastique' AND date_retour IS NULL;
```
19. Combien d'exemplaires ont été emprunté en avril 2022 ? En utisant les opérateurs >= et =<
```sql
SELECT COUNT(*) AS nb_emprunts
FROM emprunt
WHERE date_emprunt >='2022/04/01' AND date_emprunt <='2022/04/30';
```
20. Même question mais en utilisant les fonctions MONTH et YEAR.
```sql
SELECT COUNT(*) AS nb_emprunts
FROM emprunt
WHERE MONTH(date_emprunt) = 4 AND YEAR(date_emprunt) = 2022;
```
21. Afficher la liste des titres et auteurs de tous les livres.
```sql
SELECT titre, nom, prenom
FROM livre
INNER JOIN auteur ON livre.auteur_id = auteur.id;
```
22. Afficher la liste des lecteurs ayant emprunté au moins un livre avec leur nom, prénom et le nombre de livres empruntés.
```sql
SELECT nom, prenom, COUNT(*) nb_emprunts
FROM lecteur
INNER JOIN emprunt ON emprunt.lecteur_id = lecteur.id
GROUP BY lecteur.id
HAVING nb_emprunts >=1;
```







<!--
9. Maintenant on va



8. Affichez l'id, le titre des livres qui ont un exemplaire qui a une entrée dans la table emprunt. Appelez-moi avant de passer au point suivant.
9. Affichez les livres qui n'ont pas d'exemplaire.


9. Nous allons trouver les exemplaires qui n'ont jamais été empruntés. Pour cela on peut partir du principe suivante:"Les livres qui n'ont jamais été empruntés
-->




