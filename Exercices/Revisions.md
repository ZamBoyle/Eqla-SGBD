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
2. Reprenez la requête précédente et classer par ordre décroissant les noms de pays.
3. Maintenant par ordre croissant.
4. Affichez les pays dont le nom se terminent par %ca';
5. Affichez le nombre de pays de la précédente requête.
6. Affichez les pays qui commencent par 'e' et qui se terminent par 'a' et enfin qui contiennent un 't'. Vous utiliserez 3 LIKE;
7. Même chose mais vous n'utiliserez qu'un seul LIKE.
8. Compter le nombre total de pays.
9. Affichez les pays dont l'Id_Pays est compris entre 20 et 43;
10. Idem mais trouvez une autre méthode pour faire votre condition.
11. Affichez les noms de pays où l'Id_Pays est inférieur à 48 ou supérieur à 125.
12. Affichez les noms de pays où le code pays est compris dans cette liste de valeurs: BE, FR, LU, NL.

### 1.2 DB Localites
1. Quelle est la commune ayant la plus petite Latitude ?
2. Quelle est la plus grande Longitude sur le CP 1000 ?
3. Quelle est la moyenne des Latitudes ?
4. Groupez les longitudes et leurs nombres. Le nombre sera affiché nb.
5. Reprenez votre requête différente et ajoutez HAVING nb >1. Que se passe-t-il à votre avis ?
6. Quelle est la différence entre WHERE et HAVING ?

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

### 3. Créations des tables
Je ne vais pas vous donner les clefs primaires et étrangères, vous devrez les trouver.

Je ne vous donnerai pas l'ordre de création des tables non plus. Vous êtes grands maintenant. :-)
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

#### 3.2 Table Auteur
Vous allez créez la table **Auteur** avec une clef primaire et peut-être une clef étrangère. Devra s'y trouver:
- Le nom 
- Le prenom
- La date de naissance
- La nationalité

Un auteur peut avoir écrit 0 ou plusieurs livres.

#### 3.3 Table Theme
Vous allez créez la table **Theme** avec une clef primaire et peut-être une clef étrangère. Devra s'y trouver:
- Libellé

Un thème porte sur 0 ou plusieurs livres.

#### 3.4 Table Lecteur
Vous allez créez la table **Lecteur** avec une clef primaire et peut-être une clef étrangère. Devra s'y trouver:
- Nom
- Prenom
- Naissance

Un lecteur a emprunté 0 ou plusieurs livres.

### 3.5 Table Emprunt
Vous allez créez la table **Emprunt** avec une clef primaire et peut-être une clef étrangère. Devra s'y trouver:
- Date début.
- Date fin.
- Rendu (O/N).

Un livre est emprunté par un et un seul lecteur.
Un emprunt concerne 1 et seul livre.

### 4. Insertion des données
A nouveau, vous devez trouvez l'ordre d'insertion dans les bases de données.
Rappelez-vous l'exercice sur les joueurs de foot. Pour pouvoir ajouter un joueur on devait avoir créé avant l'équipe dans laquelle il joue (IdEquipe).

#### 4.1 Ajout de livres dans la table Livre
Ajoutez 3 livres.

#### 4.2 Ajout de lecteurs dans la table Lecteur
Ajoutez 5 lecteurs.

#### 4.3 Ajout d'emprunts dans la table Emprunt
Ajoutez 3 Emprunts par des lecteurs différents et des livres différents.

#### 4.4 Ajout de thèmes dans la table Theme
Ajoutez 5 thèmes: Programmation, Roman, Science-Fiction, Thriller et Policier.

#### 4.5 Ajout de auteurs dans la table Auteur
Ajoutez 5 auteurs.

## Exercice 3 - CREATION de la DB biblio2
- La différence entre cette base de données (biblio2) et biblio c'est que maintenant un livre peut avoir un ou plusieurs auteurs.
- Une fois que vous aurez trouvé comment faire, pour deux des précédents livres faites en sorte qu'ils aient 2 auteurs.

## Exercice 4 - ALTER TABLE & UPDATE
### 4.1 UPDATE TABLE
- Modifier la table lecteur et ajouter une colonne date_inscription.
- Dans un premier temps, vous permettrez l'ajout de la valeur NULL.

### 4.2  UPDATE
- Mettez la date_inscription pour tout le monde au '01-01-01': En effet, de cette manière lorsque l'on verra cette date '01-01-01' on saura que ces lecteurs n'avait pas de date_inscription.
- Enfin, modifier la date_inscription pour qu'elle n'accepte pas la valeur NULL.


## 4.3 ALTER TABLE
- Modifier la table lecteur et modifier la colonne date_inscription.
- Vous définirez que la colonne date_inscription ne permet pas les NULL

## Exercice 5 - Naming Convention - CREATION de la DB Biblio3
- Utiliser la convention de nommage pour toute la création de la base de données biblio3 en vous basant sur biblio2.

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

### 6.2 Table livre
On supprimera de la table livre le champ: nombre d'exemplaires (pourquoi ?)
On supprimera de la table livre le champ date achat si vous l'aviez mis.

Un livre peut avoir 1 ou plusieurs exemplaires.

### 6.3 Table emprunt
La différence c'est que l'emprunt portera maintenant sur un exemplaire de livre et nom directement sur le livre.

Un emprunt porte sur 1 et 1 seul exemplaire.

## Exercice 3 - DB biblio4_prof
### 3.1 Importation de la DB 
1. Télécharger la base de données [biblio4_prof](https://raw.githubusercontent.com/ZamBoyle/Eqla-SGBD/master/Exercices/Revisions/biblio4_prof/backup_biblio4_prof.sql).
2. Mettez-la dans le répertoire avec les autres bases de données: pays.sql, blindcode.sql, etc.
3. Faites un source backup_biblio4_prof.sql
4. Comment pourriez-vous vérifier que la nouvelle base de données biblio4_prof existe bien dans mariadb ?
5. Utilisez la base de données biblio4_prof

### 3.2 Exercices
1. Afficher la liste de tous les livres avec leur titre et leur theme.
2. Combien d'exemplaires sont empruntés en ce moment ?
3. Quel est le lecteur qui a emprunté le plus de livres ? (Affichez le nom, prénom et le nombre de livres). Indice: nous avons vu comment limiter le nombre de résultat et classer le résultat dans l'ordre descendant.
4. Quel est le livre qui a été le plus emprunté ? Emprunts tout confondus: en cours ou passés. Affichez le titre et le nombre de fois qu'il a été emprunté. Utilisez une colonne nb_emprunts.
5. Afficher la liste des exemplaires empruntés par le lecteur ayant l'ID 1. On affichera le nom du livre et la date d'emprunt ainsi que la date retour.
6. Afficher la liste des livres ayant un auteur né avant le 1er janvier 1980.
7. Afficher tous les champs de la table livre des livres ayant au moins un exemplaire.
8. Afficher la liste des auteurs ayant une nationalité 'française'.
9. Afficher la liste des auteurs ayant un nom commençant par la lettre 'M'.
10. Afficher la liste des auteurs ayant un prénom comportant plus de 5 caractères. Aidez-vous de Google pour trouver la fonction à utiliser.
11. Afficher la liste des auteurs dont le nom ou le prénom comporte la lettre 'e'.
12. Afficher la liste des auteurs avec leur nom, prénom et l'âge qu'ils ont.
13. Afficher la liste des exemplaires acutellement empruntés avec le nom et prénom de l'emprunteur.
14. Combien d'exemplaires y a-t-il du livre suivant:Charlie Chan's Murder Cruise
15. Quels sont les livres qui ont été empruntés au moins 2 fois ? Indice: Agrégat et HAVING
16. Reprenez la requête précédente et modifiez la pour n'avoir que les emprunts en cours.
17. Combien d'exemplaires sont empruntés en ce moment portant sur le thème Fantastique ?
18. Combien d'exemplaires ont été emprunté en avril 2022 ? En utisant les opérateurs >= et =<
19. Même question mais en utilisant les fonctions MONTH et YEAR.
20. Afficher la liste des titres et auteurs de tous les livres.
21. Afficher la liste des lecteurs ayant emprunté au moins un livre avec leur nom, prénom et le nombre de livres empruntés.







<!--
9. Maintenant on va



8. Affichez l'id, le titre des livres qui ont un exemplaire qui a une entrée dans la table emprunt. Appelez-moi avant de passer au point suivant.
9. Affichez les livres qui n'ont pas d'exemplaire.


9. Nous allons trouver les exemplaires qui n'ont jamais été empruntés. Pour cela on peut partir du principe suivante:"Les livres qui n'ont jamais été empruntés
-->




