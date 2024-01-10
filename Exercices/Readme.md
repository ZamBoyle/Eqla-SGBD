<h1>Exercices SQL</h1>

![](../Theo/media/image1.png)
<div style="text-align: right">
<i>Johnny Piette</i>
</div>

****
<h1>Table des matières</h1>

- [Introduction](#introduction)
- [Copier les DB exercices](#copier-les-db-exercices)
- [Exercice n°1 - Importation des fichiers de base de données](#exercice-n1---importation-des-fichiers-de-base-de-données)
- [Exercice n°2 - Notre premier SELECT \*](#exercice-n2---notre-premier-select-)
- [Exercice n°3 - SELECT ch1, ch2, etc.](#exercice-n3---select-ch1-ch2-etc)
- [Exercice n°4 - Notre premier WHERE](#exercice-n4---notre-premier-where)
- [Exercice n°5 - WHERE   AND](#exercice-n5---where---and)
- [Exercice n°6 - WHERE   IS NULL IS NOT NULL](#exercice-n6---where---is-null-is-not-null)
- [Exercice n°7 - WHERE     AND](#exercice-n7---where-----and)
- [Exercice n°8 - WHERE  sur une DATE](#exercice-n8---where--sur-une-date)
- [Exercice n°9 - WHERE sur des DATES](#exercice-n9---where-sur-des-dates)
- [Exercice n°10 - WHERE    avec LIKE '%quelquechose' = se termine par 'quelquechose'](#exercice-n10---where----avec-like-quelquechose--se-termine-par-quelquechose)
- [Exercice n°11 - WHERE    avec LIKE '%quelquechose%' = contient 'quelquechose'](#exercice-n11---where----avec-like-quelquechose--contient-quelquechose)
- [Exercice n°12 - WHERE    avec LIKE 'quelquechose%' = commence par 'quelquechose'](#exercice-n12---where----avec-like-quelquechose--commence-par-quelquechose)
- [Exercice n°13 - WHERE   AND     OR](#exercice-n13---where---and-----or)
- [Exercice n°14 - ORDER BY](#exercice-n14---order-by)
- [Exercice n°15 - ORDER BY](#exercice-n15---order-by)
- [Exercice n°16 - AVG](#exercice-n16---avg)
- [Exercice n°17.1 - MIN, MAX, SUM](#exercice-n171---min-max-sum)
- [Exercice n°17.2 - COUNT(\*)](#exercice-n172---count)
- [Exercice n°17.3 - COUNT(champ)](#exercice-n173---countchamp)
- [Exercice n°18 - GROUP BY](#exercice-n18---group-by)
- [Exercice n°19 - GROUP BY](#exercice-n19---group-by)
- [Exercice n°20 - GROUP BY](#exercice-n20---group-by)
- [Exercice n°21 - GROUP BY](#exercice-n21---group-by)
- [Exercice n°22 - INNER JOIN](#exercice-n22---inner-join)
- [Exercice n°23 - INNER JOIN](#exercice-n23---inner-join)
- [Exercice n°24 - INNER JOIN](#exercice-n24---inner-join)
- [Exercice n°25 - INNER JOIN](#exercice-n25---inner-join)
- [Exercice n°26 - CREATE DATABASE / CREATE TABLE](#exercice-n26---create-database--create-table)
- [Exercice n°27 - CREATE DATABASE / CREATE TABLE](#exercice-n27---create-database--create-table)
- [Exercice n°28 - INSERT INTO](#exercice-n28---insert-into)
- [Exercice n°29 - INSERT INTO](#exercice-n29---insert-into)
- [Exercice n°30 - UPDATE](#exercice-n30---update)
- [Exercice n°31 - UPDATE](#exercice-n31---update)
- [Exercice n°32 - UPDATE](#exercice-n32---update)
- [Exercice n°33 - DELETE](#exercice-n33---delete)
- [Exercice n°34 - FUNCTIONS](#exercice-n34---functions)
- [Exercice n°35 - FUNCTIONS avec paramètres](#exercice-n35---functions-avec-paramètres)
- [Exercice n°35 - FUNCTIONS avec paramètres](#exercice-n35---functions-avec-paramètres-1)

## Introduction
Toute commande dans mysql doit se terminer par un point virgule ;

Si vous ne le faites pas mysql ne sait pas que vous avez terminé la commande en cours.

Pour savoir dans quelle base de données vous êtes actuellement, on va customiser notre prompt.
Dans la console mysql, tapez:
```bash
prompt <\d>
```

## Copier les DB exercices
Copier les fichiers SQL se trouvant via cette adresse: [Base de données des exercices ](https://github.com/ZamBoyle/Eqla-SGBD/raw/master/DB/DB.zip)

Décompresssez ce fichier DB.zip et mettez le répertoire DB dans votre dépôt Eqla-Exercices.
Demandez-moi le mot de passe pour décompresser le fichier.

## Exercice n°1 - Importation des fichiers de base de données
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL:
   ```bash
   mysql -u root -p
   ```
3. Entrez votre mot de passe
4. Importez le script qui va générer la base de données BlindCode:
   ```sql
   source BlindCode.sql 
   ```
5. Importez le script qui va générer la base de données Localites (Ca va prendre plus temps: attendez): 
   ```sql
   source Localites.sql
   ```
6. Importez le script qui va générer la base de données Ventes: 
   ```sql
   source Ventes.sql
   ```
7. Importez le script qui va générer la base de données Ventes: 
   ```sql
   source Pays.sql
   ```
8. Importez le script qui va générer la base de données BlindCode2:
   ```sql
   source BlindCode2.sql 
   ```
9. Importez le script qui va générer la base de données Exercices:
   ```sql
   source Exercices.sql 
   ```      
10.  Pour avoir la liste des bases de données présentes: SHOW DATABASES;
11. Vous devriez voir dans la liste des bases de données: BlindCode, BlindCode2, Exercices, Localites, Ventes, Pays
12. Si vous avez des erreurs appelez-moi.

## Exercice n°2 - Notre premier SELECT *
1. Connectez-vous au SGBD MySQL: **mysql -u root -p**
2. Entrez votre mot de passe.
3. Si vous n'êtes pas dans la DB BlindCode, tapez: **use BlindCode;**
4. Ecrivez l'instruction qui affichez tous les enregistrements de la table Eleve: tous les champs à l'aide du caractère *
5. Ecrivez l'instruction qui affichez tous les enregistrements de la table formation: tous les champs à l'aide du caractère *

## Exercice n°3 - SELECT ch1, ch2, etc.
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe
4. Si vous n'êtes pas dans la DB BlindCode, tapez: **use BlindCode;**
5. Affichez tous les enregistrements de la table Eleve avec les champs suivants: Nom, Prenom, Email
6. Affichez tous les enregistrements de la table formation avec les champs: Nom, Lieux

## Exercice n°4 - Notre premier WHERE
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe
4. Si vous n'êtes pas dans la DB BlindCode, tapez: **use BlindCode;**
5. Affichez tous les élèves de sexe Féminin.
6. Affichez tous les élèves de sexe Masculin.
7. Affichez Le nom, le prénom, la localite des élèves qui habitent sur le CP 1030.

## Exercice n°5 - WHERE   AND
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe
4. Si vous n'êtes pas dans la DB BlindCode, tapez: **use BlindCode;**
5. Affichez tous les élèves de Sexe Masculin ET ayant comme CP 1348

## Exercice n°6 - WHERE   IS NULL IS NOT NULL
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe
4. Si vous n'êtes pas dans la DB BlindCode, tapez: **use BlindCode;**
5. Affichez tous les élèves qui n'ont pas de numéro de téléphone: On utilisera IS NULL
6. A l'inverse, affichez les élèves qui ont un numéro de téléphone: On utilisera IS NOT NULL.

## Exercice n°7 - WHERE     AND
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe
4. Si vous n'êtes pas dans la DB BlindCode, tapez: **use BlindCode;**
5. Affichez les élèves dont le code postal est dans les 1000 (il y a donc plusieurs valeurs).

## Exercice n°8 - WHERE  sur une DATE
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe
4. Si vous n'êtes pas dans la DB BlindCode, tapez: **use BlindCode;**
5. Affichez les élèves nés après 1980: Le format de la date est année/Mois/Jour.
6. Affichez les élèves nés avant 1980: Le format de la date est année/Mois/Jour.

## Exercice n°9 - WHERE sur des DATES
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe
4. Si vous n'êtes pas dans la DB BlindCode, tapez: **use BlindCode;**
5. Affichez les élèves nés entre 1980 ET 1990.
6. Affichez les élèves qui ne sont pas nés entre 1980 ET 1990.
   Pour cela, vous devez inverser la requête précédente.  Pour rappel, dans une inversion de condition:
   - AND devient OR
   - OR devient AND
   - = devient \<\>
   - \<\> devient =
   - \> devient \<=
   - \>= devient \<
   - \< devient \>=
   - \<= devient \>
   Exemple: `a \< b AND d >= e` devient `a \>= b OR d \< e`
   A vous de jouer. :-)
7. Reprenez la requète des élèves nés entre 1980 ET 1990. Encadrez celle-ci de parenthèses et ajoutez juste devant le NOT. Vous devriez avoir le même résultat que la requête précédente. Parfois quand on a des requêtes complexes, il est plus facile de les inverser en ajoutant un NOT devant la requête. C'est plus facile que de tout inverser. :-)

## Exercice n°10 - WHERE    avec LIKE '%quelquechose' = se termine par 'quelquechose'
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe
4. Si vous n'êtes pas dans la DB BlindCode, tapez: **use BlindCode;**
5. Affichez les élèves qui ont une adresse de type gmail.com
6. Affichez les élèves qui n'ont pas une adresse de type gmail.com

## Exercice n°11 - WHERE    avec LIKE '%quelquechose%' = contient 'quelquechose'
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe
4. Si vous n'êtes pas dans la DB BlindCode, tapez: **use BlindCode;**
5. Affichez les élèves qui ont une adresse  qui n'ont pas une adresse de type gmail.com

## Exercice n°12 - WHERE    avec LIKE 'quelquechose%' = commence par 'quelquechose'
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe
4. Si vous n'êtes pas dans la DB BlindCode, tapez: **use BlindCode;**
5. Affichez les élèves dont le nom commence par 'be'

## Exercice n°13 - WHERE   AND     OR
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe
4. Si vous n'êtes pas dans la DB Localite, tapez: **use Localites;**
5. Vous utiliserez la table localite pour les points suivants.
6. Affichez toutes les communes sur le code Postal 4280
7. Affichez toutes les communes sur le code Postal 4280 et dont la commune commence par 'b' ou par 'a'
8. Affichez les CP et les noms des communes de la Province de Liège: les CP sont compris entre 4000 et 4999

## Exercice n°14 - ORDER BY    
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe
4. Si vous n'êtes pas dans la DB BlindCode, tapez: **use BlindCode;**
5. Affichez les champs: Prenom, Nom, Sexe, Naissance et triez dans l'ordre alphabétique sur le nom et puis le prenom.
6. Ensuite, triez dans l'ordre inverse le nom.
7. Triez les élèves du plus agé au plus jeune.
8. Ensuite, triez dans l'ordre inverse.

## Exercice n°15 - ORDER BY 
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe
4. Si vous n'êtes pas dans la DB BlindCode, tapez: **use BlindCode;**
5. On va ici créer une colonne dynamiquement dans le résultat qu'on nommera Age. On utilisera le AS comme vu au cours dans la Exercice n°"champs calculés"
   Je vous demande d'afficher le prenom, nom et l'age des eleves.
   Pour cela, je vous rappelle que la fonction YEAR()   permet de récupérer l'année d'une date et que CURDATE() donne la date du jour. Pour avoir l'age approximatif de l'élève on pourrait donc faire Année en cours(2022)-Année de naissance(ex:1974) AS Age
6. Reprenez la requête précédente et affichez les élèves du plus jeune au plus vieux.
7. Ensuite, du plus vieux au plus jeune.
8. Réécrivez vos deux requêtes pour ne traîter que des élèves de BlindCodeJava.

## Exercice n°16 - AVG
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe.
4. Si vous n'êtes pas dans la DB BlindCode, tapez: **use BlindCode;**
5. Reprenez la requête de la Exercice n°15.
6. Modifiez-la pour que l'on ait l'age moyen des élèves.

## Exercice n°17.1 - MIN, MAX, SUM
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe
4. Si vous n'êtes pas dans la DB Ventes, tapez: **use ventes;**
5. Affichez le prix maximum des produits
6. Affichez le prix minimum des produits
7. Affichez le prix total de tous les produits en tenant compte du stock de chaque produit. :-)

## Exercice n°17.2 - COUNT(*)
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Si vous n'êtes pas dans la DB Ventes, tapez: **use ventes;**
4. Affichez le nombre total de produits différents.
5. Utilisez la DB BlindCode, tapez: **use BlindCode;**
6. Affichez le nombre total d'élèves qui ont plus de 25 ans et appelez cette colonne 'nb_eleves'.

## Exercice n°17.3 - COUNT(champ)
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Si vous n'êtes pas dans la DB Ventes, tapez: **use ventes;**
4. 

## Exercice n°18 - GROUP BY
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe
4. Si vous n'êtes pas dans la DB Ventes, tapez: **use ventes;**
5. Affichez pour chaque catégorie, son stock. (Indice utilisez aussi SUM)

## Exercice n°19 - GROUP BY
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe.
4. Si vous n'êtes pas dans la DB BlindCode, tapez: **use BlindCode;**
5. Affichez pour chaque sexe, le nombre total. (Indice COUNT)
6. Affichez pour chaque nationalite, le nombre total.

## Exercice n°20 - GROUP BY
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe.
4. Si vous n'êtes pas dans la DB Pays, tapez: **use Pays;**
5. Faites un DESC Pays, pour voir sa structure.
6. Affichez pour chaque continent, combien il a de pays. On n'utilisera qu'une seule table: Pays. Donc pour le continent à afficher on prendra le champ continent. (On fera mieux plus tard.)

## Exercice n°21 - GROUP BY
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe.
4. Si vous n'êtes pas dans la DB BlindCode2, tapez: **use BlindCode2;**
5. Expliquez ce que fait cette commande SQL:
```sql
SELECT YEAR(date_inscription) As 'Annee Inscription', COUNT(date_inscription)
FROM eleve_formation
group by YEAR(date_inscription);
```
6. Pourquoi avoir utilisé la Fonction **YEAR** ? Pour vous aider, comparez sans le **YEAR**:
```sql
SELECT date_inscription As 'Annee Inscription', COUNT(date_inscription)
FROM eleve_formation
group by date_inscription;
```

<!--
1. **Explication de la commande SQL** :
   La commande SQL donnée effectue les actions suivantes :
   - `SELECT YEAR(date_inscription) As 'Annee Inscription'` : Cette partie extrait l'année de la colonne `date_inscription` de chaque enregistrement dans la table `eleve_formation` et la nomme 'Annee Inscription'.
   - `COUNT(date_inscription)` : Cette partie compte le nombre d'enregistrements (élèves inscrits) pour chaque année.
   - `FROM eleve_formation` : Indique que la requête récupère les données de la table `eleve_formation`.
   - `GROUP BY YEAR(date_inscription)` : Cette partie groupe les résultats par année d'inscription. Cela signifie que pour chaque année distincte dans la table, la requête comptera le nombre d'élèves inscrits cette année-là.

2. **Utilisation de la fonction YEAR** :
   - L'utilisation de `YEAR(date_inscription)` permet de regrouper et de compter les enregistrements par année, sans tenir compte des mois et des jours. Cela donne un aperçu de combien d'élèves se sont inscrits chaque année.
   - Sans le `YEAR`, la requête `GROUP BY date_inscription` grouperait les données par date exacte, y compris l'année, le mois et le jour. Cela donnerait un compte de combien d'élèves se sont inscrits à chaque date précise, ce qui pourrait mener à des résultats très fragmentés et moins utiles pour une analyse annuelle.
-->



## Exercice n°22 - INNER JOIN
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe.
4. Si vous n'êtes pas dans la DB Pays, tapez: **use Pays;**
5. Affichez chaque pays et le nom du continent dont il fait partie.
6. Faites un tri ascendant sur le nom du pays.
7. Je vous conseille d'utiliser le mot clef **AS** après le nom du pays et après le nom du continent. Sinon vous allez avoir deux colonnes Name pour le pays et le continent. Ce qui n'est pas très pratique...

<!--
```sql
1. Affichage des pays et de leurs continents :
SELECT p.name AS Nom_Pays, c.name AS Nom_Continent
FROM Pays p
JOIN continent c ON p.continent = c.code;
```

2. Tri ascendant sur le nom du pays :
```sql
SELECT p.name AS Nom_Pays, c.name AS Nom_Continent
FROM Pays p
JOIN continent c ON p.continent = c.code
ORDER BY p.name ASC;
```
-->



<!--
## Exercice n°23 - INNER JOIN
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe.
4. Si vous n'êtes pas dans la DB Pays, tapez: **use Pays;**
5. Affichez le nom COMPLET du pays et le nom COMPLET du continent (pas l'acronyme) dont il fait partie.
-->

## Exercice n°23 - INNER JOIN
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe.
4. Si vous n'êtes pas dans la DB Ventes, tapez: **use ventes;**
5. Pour cet exercice, on va travailler sur deux tables: ProduitV2 et Categorie.
6. Affichez tous les noms de produits et le nom de la catégorie dont ils font partie.
7. Faites un tri ascendant sur le nom du produit.

<!--
1. Afficher les noms de produits et leurs catégories :
```sql
SELECT p.Nom, c.Nom
FROM ProduitV2 p
JOIN Categorie c ON p.IdCategorie = c.IdCategorie;
```

2. Trier par nom de produit en ordre ascendant :
```sql
SELECT p.Nom, c.Nom
FROM ProduitV2 p
JOIN Categorie c ON p.IdCategorie = c.IdCategorie
ORDER BY p.Nom ASC;
```
-->

## Exercice n°24 - INNER JOIN
Ici, on va travailler sur trois tables. La table _eleve_, la table _formation_ et la table _eleve_formation_.
Analyser la description des tables pour comprendre comment les lier entre elles.
Pour connaître la description d'une table, on utilise la commande: **DESC nomdelatable;**
No stress, si vous n'y arrivez pas. On va le faire ensemble de toute manière ;)

1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe.
4. Si vous n'êtes pas dans la DB BlindCode2, tapez: **use BlindCode2;**
5. On va afficher le nom et prénom de l'élève, le nom de la formation et la date d'inscription.

<!--
```sql
SELECT e.prenom, e.nom, f.nom AS Nom_Formation, ef.date_inscription
FROM eleve e
JOIN eleve_formation ef ON e.id = ef.eleve_id
JOIN formation f ON ef.formation_id = f.id;
```
-->

## Exercice n°25.1 - INNER JOIN
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe.
4. Si vous n'êtes pas dans la DB BlindCode, tapez: **use BlindCode;**
5. Affichez le nom, le prénom, le sexe et le nom de la formation de chaque élève.
6. Affichez le nom des différentes formations et le nombre d'élèves dans chacune d'elle. La colonne du nombre d'élèves s'appelera NBEleves. (ça sent le `COUNT` ça ainsi que d'un `GROUP BY` et `INNER JOIN`... Il n'est pas sympa le prof. :-))
7. Faites un tri descendant sur le nombre d'élèves.

<!--
1. Affichez le nom, le prénom, le sexe et le nom de la formation de chaque élève.
```sql
SELECT e.nom, e.prenom, e.sexe, f.nom AS Nom_Formation
FROM eleve e
JOIN formation f ON e.formation_id = f.id;
```

2. Afficher le nom des formations et le nombre d'élèves dans chacune :
```sql
SELECT f.nom AS Nom_Formation, COUNT(e.id) AS NBEleves
FROM formation f
JOIN eleve e ON f.id = e.formation_id
GROUP BY f.nom;
```

3. Trier par nombre d'élèves en ordre descendant :
```sql
SELECT f.nom AS Nom_Formation, COUNT(e.id) AS NBEleves
FROM formation f
JOIN eleve e ON f.id = e.formation_id
GROUP BY f.nom
ORDER BY NBEleves DESC;
```
-->

## Exercice n°25.2 - Nouvelle DB !! :-) - employees
1. Vous allez clonez le dépôt suivant: [test_db](https://github.com/datacharmer/test_db.git) (Aie aie aie, ça sent le git ça... mais quelle idée de mettre du git dans un cours SQL... vous devrez utiliser la commande git clone pour cloner le dépôt.)
2. Allez dans le répertoire test_db
3. Connectez-vous au SGBD MySQL: **mysql -u root -p**
4. Entre votre mot de passe.
5. Importez la base de données: source employees.sql
6. Si vous avez des erreurs, appelez-moi.
7. Explorons la base de données: **USE employees;**
8. Voyons quelles sont les tables: **SHOW TABLES;**
9. Voyons la structure de la table employees: **DESC employees;**
10. Voyons la structure de la table titles: **DESC titles;**
11. Voyons la structure de la table salaries: **DESC salaries;**
12. Voyons la structure de la table dept_emp: **DESC dept_emp;**
13. Voyons la structure de la table dept_manager: **DESC dept_manager;**
14. Voyons la structure de la table departments: **DESC departments;**
15. En plus, si cela vous est possible, regardez l'image qui se trouve dans le répertoire: images/employees.png pour comprendre comment les tables sont liées entre elles.
16. Sur la base du schéma fourni, voici les cardinalités des relations entre les tables :
      - **employees et titles**: Un employé (1) peut avoir plusieurs (N) titres.
      - **employees et salaries**: Un employé (1) peut avoir plusieurs (N) enregistrements de salaire.
      - **employees et dept_emp**: Un employé (1) peut appartenir à plusieurs (N) départements.
      - **employees et dept_manager**: Un employé (1) peut être manager de plusieurs (N) départements.
      - **departments et dept_emp**: Un département (1) peut avoir plusieurs (N) employés.
      - **departments et dept_manager**: Un département (1) peut avoir plusieurs (N) managers.
      - Il est à noter que les relations de type "plusieurs-à-plusieurs" (N:N) sont représentées via des tables d'association telles que `dept_emp` et `dept_manager`, qui permettent de résoudre ces relations en deux relations "un-à-plusieurs" (1:N).

Utilisation de LIMIT
--
Pour éviter d'être submergé par certains résultats, vous pouvez ajouter une clause `LIMIT` à la fin de vos requêtes, par exemple `LIMIT 10` pour n'afficher que les 10 premiers résultats. En effet, la table `employees` contient plus de 300 000 enregistrements, ce qui peut être difficile à gérer.

Exemple:
```sql
SELECT *
FROM employees
LIMIT 10;
```


## Exercice n°25.3 - INNER JOIN
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p** (Si vous n'êtes pas connecté)
3. Entrez votre mot de passe.
4. Si vous n'êtes pas dans la DB employees, tapez: **use employees;**
5. Affichez le nom, le prénom de l'employé, son genre, la date de son embauche. (Rien de difficile ici).
6. Affichez le nom, le prénom de l'employé, son genre, la date de son embauche et ses titres.
7. Pour l'employé 10500, affichez son nom, prénom, genre, date d'embauche, ses différents salaires avec les dates de début et de fin de chaque salaire (from_date et to_date).
8. Triez le précédent résultat pour afficher les salaires du plus récent au plus ancien. Vous verrez qu'il y a comme date de fin de salaire le 9999-01-01. Cela signifie que l'employé est toujours en fonction avec ce salaire. :-)
> La date '9999-01-01' est une valeur réelle, concrète, qui est utilisée conventionnellement pour représenter une date de fin ouverte ou indéfinie, par exemple dans un contrat de travail ou une licence qui est toujours active. C'est une astuce courante pour éviter d'utiliser `NULL`, qui pourrait être interprété comme une absence d'information ou une erreur, alors que '9999-01-01' transmet clairement l'intention que l'élément est toujours en cours sans date de fin prévue.

<!--
1. Informations de base de l'employé :
```sql
SELECT first_name, last_name, gender, hire_date
FROM employees;
```
2.Informations de l'employé avec titres :
```sql
SELECT e.first_name, e.last_name, e.gender, e.hire_date, t.title
FROM employees e
JOIN titles t ON e.emp_no = t.emp_no;
```
3. Détails spécifiques pour l'employé 10500 :
```sql
SELECT e.first_name, e.last_name, e.gender, e.hire_date, s.salary, s.from_date, s.to_date
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no
WHERE e.emp_no = 10500;
```
4. Trie des salaires de l'employé 10500 :
```sql
SELECT e.first_name, e.last_name, e.gender, e.hire_date, s.salary, s.from_date, s.to_date
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no
WHERE e.emp_no = 10500
ORDER BY s.from_date DESC;
```
-->


## Exercice n°25.4 - INNER JOIN
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p** (Si vous n'êtes pas connecté)
3. Entrez votre mot de passe.
4. Si vous n'êtes pas dans la DB employees, tapez: **use employees;**
5. Affichez le nom du département, le nom du manager, le prénon du manager, sa date de début et sa date de fin de fonction. (On utilisera la table dept_manager qui est la table intermédiaire entre employees et departments).
5. Affichez le nom, prénom des employés qui ont le titre de manager;
6. Afficher le nom, le prénom et le département de chaque employé.
7. Affichez les employés qui ont travaillé dans le département 'Finance'.
8. Affichez les employés qui ont travaillé dans le département 'Finance' et qui ont été manager de ce département.

<!--
1. Informations des managers de département :
```sql
SELECT d.dept_name, e.first_name, e.last_name, dm.from_date, dm.to_date
FROM departments d
JOIN dept_manager dm ON d.dept_no = dm.dept_no
JOIN employees e ON dm.emp_no = e.emp_no;
```
2. Employés avec titre de manager :
```sql
SELECT e.first_name, e.last_name
FROM employees e
JOIN titles t ON e.emp_no = t.emp_no
WHERE t.title = 'Manager';
```
3. Nom, prénom et département de chaque employé :
```sql
SELECT e.first_name, e.last_name, d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no;
```
4. Employés du département 'Finance' :
```sql
SELECT e.first_name, e.last_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Finance';
```
5. Employés de 'Finance' qui ont été managers :
```sql
SELECT DISTINCT e.first_name, e.last_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
JOIN dept_manager dm ON e.emp_no = dm.emp_no AND d.dept_no = dm.dept_no
WHERE d.dept_name = 'Finance';
```
-->

## Exercice n°25.5 - INNER JOIN - Analyse des titres d'emploi et des salaires
Dans une entreprise, chaque employé a un titre spécifique associé à son poste. Ces titres peuvent varier de "Ingénieur" à "Directeur", "Manager", etc. Votre tâche est d'analyser la distribution des titres d'emploi dans l'entreprise.

Utilisez la base de données `employees` qui contient deux tables pertinentes pour cet exercice : employees et titles. La table employees contient des informations sur chaque employé. La table titles contient des informations sur les titres d'emploi de chaque employé et son titre.

Je vous rappelle que pour avoir la description d'une table, on utilise la commande: **DESC nomdelatable;**
Donc, pour avoir la description de la table employees, on tape: **DESC employees;**
Pour avoir la description de la table titles, on tape: **DESC titles;**

1. Écrivez une requête SQL qui renvoie chaque titre d'emploi unique et le nombre d'employés qui ont ce titre. Votre requête devrait renvoyer un tableau avec deux colonnes : title et Number of Employees. (Humm ça ne sentirait pas le GROUP BY ?)
<!--
```sql
SELECT t.title, COUNT(*) AS 'Nombre d''employés'
FROM employees e
JOIN titles t ON e.emp_no = t.emp_no
GROUP BY t.title;
```
-->
2. Triez les résultats par nombre d'employés en ordre descendant.
<!--
```sql
SELECT t.title, AVG(s.salary) AS moyenne_salaire
FROM employees e
JOIN titles t ON e.emp_no = t.emp_no
JOIN salaries s ON e.emp_no = s.emp_no
GROUP BY t.title
ORDER BY moyenne_salaire DESC;
```
-->
3. Faites deux requêtes:
   - Quel titre est le plus courant ?
<!--
```sql
SELECT t.title, COUNT(*) AS Number_of_Employees
FROM employees e
JOIN titles t ON e.emp_no = t.emp_no
GROUP BY t.title
ORDER BY COUNT(*) DESC
LIMIT 1;
```
-->
   - Quel titre est le moins courant ?
<!--
```sql
SELECT t.title, COUNT(*) AS Number_of_Employees
FROM employees e
JOIN titles t ON e.emp_no = t.emp_no
GROUP BY t.title
ORDER BY COUNT(*) DESC
LIMIT 1;
```
-->
4. Quelle est la moyenne des salaires des différents titres ?
<!--
```sql
SELECT t.title, AVG(s.salary) AS moyenne_salaire
FROM employees e
JOIN titles t ON e.emp_no = t.emp_no
JOIN salaries s ON e.emp_no = s.emp_no
GROUP BY t.title
ORDER BY moyenne_salaire DESC;
```
-->
5. Vous utiliserez la table salaries. Quel est le salaire moyen des employés de l'entreprise ?

<!-- ```sql
SELECT AVG(salary) AS Moyenne_salaire
FROM salaries;
``` -->
6. Quel est l'employé le mieux payé de l'entreprise ?
<!-- ```sql
SELECT e.first_name, e.last_name, s.salary
FROM salaries s
INNER JOIN employees e ON s.emp_no = e.emp_no
ORDER BY s.salary DESC
LIMIT 1;
``` -->
7. Quel est l'employé le moins bien payé de l'entreprise ?
<!-- ```sql
SELECT e.first_name, e.last_name, s.salary
FROM salaries s
INNER JOIN employees e ON s.emp_no = e.emp_no
ORDER BY s.salary ASC
LIMIT 1;
``` -->
 ## Exercice n°26 - CREATE DATABASE / CREATE TABLE
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe.
4. Créez une base de données nommée: Exercice26
5. Utilisez cette nouvelle de données avec la commande USE Exercice26;
6. Créer une Table Equipe. Cette table aura les champs suivants:
   - IdEquipe (clef primaire): Entier, non signé, NOT NULL, auto-incrémenté.
   - NomClub: chaîne de max 30 caractères, NOT NULL.
   - Localité: chaîne de max 30 caractères, NOT NULL.
   - Division: TINYINT non signé, NOT NULL.

## Exercice n°27 - CREATE DATABASE / CREATE TABLE
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe.
4. Trouvez les commandes sql suivantes:
   - Si la base de données Exercice27 existe la supprimer.
   - Créez une base de données nommée: Exercice27
   - Utilisez cette nouvelle base de données avec la commande USE Exercice27;
5. Recopiez tout le CREATE TABLE Equipe de l'exercice26.
6. Créer la Table Joueur. Cette table aura les champs suivants:
   -  IdJoueur (clef primaire): Entier, NOT NULL, non signé, auto-incrémenté.
   -  Nom: chaîne de max 30 caractères, NOT NULL.
   -  Prenom: Chaîne de max 30 caractères, NOT NULL.
   -  DateNaissance: Date, NOT NULL.
   -  IdEquipe (clef étrangère): entier NOT NULL, non signé, Référence IdEquipe de la table Equipe.

## Exercice n°28 - INSERT INTO
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe.
4. Si vous n'êtes pas dans la DB Exercices, tapez: **use Exercice27;**
5. Ajouter l'équipe suivante:
   - NomClub: Royal Club d'Andenne
   - Localité: Andenne
   - Division: 2
6. Ajouter l'équipe suivante:
   - NomClub: Standard
   - Localité: Liège
   - Division: 3
7. Afficher toutes les équipes encodées à l'aide d'un **SELECT**.

## Exercice n°29 - INSERT INTO
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe.
4. Si vous n'êtes pas dans la DB Exercices, tapez: **use Exercice27.sql;**
5. Ajouter le joueur suivant:
   - Nom: votre nom
   - Prenom: votre prenom
   - DateNaissance: votre date de naissance. (attention au format de la date dans Mysql ;) )
   - IdEquipe: l'IdEquipe correspondant à Standard.
6. Ajouter le joueur suivant:
   - Nom: Colin
   - Prenom: Pierre
   - DateNaissance: 22/07/1984 
   - IdEquipe: l'IdEquipe correspondant à Andenne.
7. Ajouter le joueur suivant:
   - Nom: Jacques
   - Prenom: Gabriel
   - DateNaissance: 22/08/2014
   - IdEquipe: l'IdEquipe correspondant à Standard.
8. Ajouter le joueur suivant:
   - Nom: Dupont
   - Prenom: Philip
   - DateNaissance: 13/12/1991
   - IdEquipe: l'IdEquipe correspondant à Standard.
9. Affichez tous les champs des enregistrements de la table joueur.
10. Idem mais en plus affichez le nom du club (cfr **INNER JOIN**)

## Exercice n°30 - UPDATE
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe.
4. Si vous n'êtes pas dans la DB Exercices, tapez: **USE Exercice27;**
5. Mettre à jour le joueur où les champs sont les suivants:
   - Nom: Dupont
   - Prenom: Philip
6. Mettez la date de naissance à 25/12/1991 (attention au format de la date dans Mysql ;) )
7. Idéalement il serait plus propre de faire un WHERE sur l'id du joueur et non sur le nom et prénom.

## Exercice n°31 - UPDATE
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe.
4. Si vous n'êtes pas dans la DB Exercices, tapez: **USE Exercice27;**
5. Mettre à jour le joueur dont l'idjoueur est = 3.
6. Changez-lui sa date de naissance en '1974/03/07' et son prénom deviendra 'Philipo';

## Exercice n°32 - UPDATE
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe.
4. Si vous n'êtes pas dans la DB Exercices, tapez: **USE Exercice27;**
5. Suite à l'arrêt du club d'Andenne, les joueurs de ce club feront dérénavant partie du Standard.
6. Mettez à jour la table joueur en tenant compte de ce changement de club.

## Exercice n°33 - DELETE
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe.
4. Si vous n'êtes pas dans la DB Exercices, tapez: **USE Exercice27;**
5. Copiez les insertions suivantes:
```sql
insert into Joueur (Prenom, Nom, DateNaissance, IdEquipe) values ('Irène', 'Link', '1974-11-26', 1);
insert into Joueur (Prenom, Nom, DateNaissance, IdEquipe) values ('Andréanne', 'Kempstone', '1999-12-23', 1);
insert into Joueur (Prenom, Nom, DateNaissance, IdEquipe) values ('Mà', 'Keech', '1985-10-28', 1);
insert into Joueur (Prenom, Nom, DateNaissance, IdEquipe) values ('Lèi', 'Blindmann', '2000-05-24', 2);
insert into Joueur (Prenom, Nom, DateNaissance, IdEquipe) values ('Intéressant', 'Antcliff', '1993-09-20', 2);
insert into Joueur (Prenom, Nom, DateNaissance, IdEquipe) values ('Mélinda', 'Astlett', '1989-01-02', 2);
insert into Joueur (Prenom, Nom, DateNaissance, IdEquipe) values ('Bénédicte', 'Kelbie', '1991-07-18', 1);
insert into Joueur (Prenom, Nom, DateNaissance, IdEquipe) values ('Cinéma', 'Hugonneau', '1994-12-02', 2);
insert into Joueur (Prenom, Nom, DateNaissance, IdEquipe) values ('Lén', 'Harteley', '1971-06-21', 1);
insert into Joueur (Prenom, Nom, DateNaissance, IdEquipe) values ('Mélodie', 'Yanin', '1990-06-07', 1);
insert into Joueur (Prenom, Nom, DateNaissance, IdEquipe) values ('Mélia', 'Joontjes', '1995-02-08', 2);
insert into Joueur (Prenom, Nom, DateNaissance, IdEquipe) values ('Noémie', 'Cowherd', '1975-05-09', 1);
insert into Joueur (Prenom, Nom, DateNaissance, IdEquipe) values ('Méryl', 'Olorenshaw', '1983-06-05', 2);
insert into Joueur (Prenom, Nom, DateNaissance, IdEquipe) values ('Léana', 'Kilbourn', '1978-03-21', 2);
insert into Joueur (Prenom, Nom, DateNaissance, IdEquipe) values ('Mélina', 'Rodrigo', '1993-04-09', 1);
insert into Joueur (Prenom, Nom, DateNaissance, IdEquipe) values ('Méryl', 'Fairley', '1982-04-29', 1);
insert into Joueur (Prenom, Nom, DateNaissance, IdEquipe) values ('Lóng', 'Mehew', '1976-05-21', 1);
insert into Joueur (Prenom, Nom, DateNaissance, IdEquipe) values ('Maëlys', 'Masser', '1999-05-05', 2);
insert into Joueur (Prenom, Nom, DateNaissance, IdEquipe) values ('Gösta', 'Elgar', '1977-03-14', 2);
insert into Joueur (Prenom, Nom, DateNaissance, IdEquipe) values ('Dorothée', 'Collie', '1977-11-11', 2);
insert into Joueur (Prenom, Nom, DateNaissance, IdEquipe) values ('Maïly', 'Purtell', '1994-01-06', 2);
insert into Joueur (Prenom, Nom, DateNaissance, IdEquipe) values ('Gwenaëlle', 'Espinet', '1996-03-12', 1);
insert into Joueur (Prenom, Nom, DateNaissance, IdEquipe) values ('Maïlis', 'Kennefick', '1995-08-22', 1);
insert into Joueur (Prenom, Nom, DateNaissance, IdEquipe) values ('Thérèse', 'Leads', '1999-12-15', 1);
insert into Joueur (Prenom, Nom, DateNaissance, IdEquipe) values ('Amélie', 'Lehrian', '2000-02-10', 1);
insert into Joueur (Prenom, Nom, DateNaissance, IdEquipe) values ('Céline', 'Czajkowski', '2001-03-20', 2);
insert into Joueur (Prenom, Nom, DateNaissance, IdEquipe) values ('Mélinda', 'Pedican', '1995-05-04', 2);
insert into Joueur (Prenom, Nom, DateNaissance, IdEquipe) values ('Lauréna', 'McGiffin', '1982-06-25', 1);
```
6. Supprimer les enregistrements qui respectent la condition suivante: Les personnes nées avant le 1er janvier 1991 et nées après le 31 décembre 1979.
7. Supprimer tous les enregistrements qui respectent la condition suivante: Dont le nom de famille commence par M ou le prénom se termine par e.
8. Supprimer tous les enregistrements dont l'IdJoueur est supérieur à 3.

## Exercice n°34 - FUNCTIONS
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe.
4. Si vous n'êtes pas dans la DB Exercices, tapez: **USE Exercice27;**
5. Créez une fonction qui s'appellera hello_world.
6. Elle retournera la phrase 'Hello Word from SQL !'

## Exercice n°35 - FUNCTIONS avec paramètres
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe.
4. Si vous n'êtes pas dans la DB Exercices, tapez: **USE Exercice27;**
5. Créez une fonction qui s'appellera hello.
6. Elle recevra deux paramètres de type VARCHAR(20).
7. Le premier se nommera first_name, le second last_name.
8. La fonction retournera par exemple 'Hello Johnny Piette !'

## Exercice n°35 - FUNCTIONS avec paramètres
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: **mysql -u root -p**
3. Entrez votre mot de passe.
4. Si vous n'êtes pas dans la DB Exercices, tapez: **USE Exercice27;**
5. Créez une fonction qui s'appellera remove_tvac.
6. Elle aura un paramètre nommé prix_tvac.
7. Elle aura un second paramètre nommé taux_tva.
8. La fonction retournera le prix sans tva.
9. Soit le prix_tvac = 80
> prix_htva = prix_tvac/(taux_tva+1)
> prix_htva = 80/1.21
> prix_htva = 66,1157
10. Votre fonction retournera donc 66,1157.

---
&copy; 2023 [Johnny Piette](https://github.com/ZamBoyle).  
[![Creative Commons Attribution 4.0 International License](https://i.creativecommons.org/l/by/4.0/88x31.png)](https://creativecommons.org/licenses/by/4.0/)  
Ce travail est licencié sous [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/).   
_Vous pouvez copier, modifier, distribuer et représenter ce travail, même à des fins commerciales, à condition de donner le crédit approprié, fournir un lien vers la licence, et indiquer si des modifications ont été effectuées._


