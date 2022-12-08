# Exercices de révisions.
<!-->
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

### 1.3 DB BlindCode
1. 

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
- Date achat

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

#### 4.5 Ajout de lecteurs dans la table Lecteur
Ajoutez 5 auteurs.

## Exercice 3 - CREATION de la DB biblio2
- La différence entre cette base de données (biblio2) et biblio c'est que maintenant un livre peut avoir un ou plusieurs auteurs.
- Une fois que vous aurez trouvé comment faire, pour deux des précédents livres faites en sorte qu'ils aient 2 auteurs.

## Exercice 4 - Naming Convention
- Utiliser la convention de nommage pour toute la création de la base de données biblio.

## Exercice 5 - Table Exemplaire - CREATION de la DB Biblio3
- La différence entre biblio2 et biblio3, c'est que maintenant il y a une table exemplaire.

### 5.1 Table exemplaire
Vous allez créez la table **exemplaire** avec une clef primaire et peut-être une clef étrangère. Devra s'y trouver:
- reference_biblio
- rayon
- date_acquisition
- etat
- est_perdu

Un exemplaire correspond à 1 et 1 seul livre.
Un exemplaire a été emprunté aucune fois ou plusieurs fois.

### 5.2 Table livre
On supprimera de la table livre le champ: nombre d'exemplaires (pourquoi ?).

Un livre peut avoir 1 ou plusieurs exemplaires.

### 5.3 Table emprunt
La différence c'est que l'emprunt portera maintenant sur un exemplaire de livre et nom directement sur le livre.

Un emprunt porte sur 1 et 1 seul exemplaire.






