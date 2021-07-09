<h1>Exercices sur les bases de données</h1>

![](../Theo/media/image1.png)
<div style="text-align: right">
<i>Johnny Piette</i>
</div>

****
<h1>Table des matières</h1>

- [Introduction](#introduction)
- [Exercice n°1 - Importation des fichiers de base de données](#exercice-n1---importation-des-fichiers-de-base-de-données)
- [Exercice n°2 - Notre premier SELECT *](#exercice-n2---notre-premier-select-)
- [Exercice n°3 - SELECT ch1, ch2, etc.](#exercice-n3---select-ch1-ch2-etc)
- [Exercice n°4 - Notre premier WHERE](#exercice-n4---notre-premier-where)
- [Exercice n°5 - WHERE   AND](#exercice-n5---where---and)
- [Exercice n°6 - WHERE   IS NULL IS NOT NULL](#exercice-n6---where---is-null-is-not-null)
- [Exercice n°7 - WHERE     AND](#exercice-n7---where-----and)
- [Exercice n°8 - WHERE  sur une DATE](#exercice-n8---where--sur-une-date)
- [Exercice n°9 - WHERE sur des DATES](#exercice-n9---where-sur-des-dates)
- [Exercice n°10 - WHERE    avec LIKE '%quelquechose' = se termine par 'quelquechose'](#exercice-n10---where----avec-like-quelquechose--se-termine-par-quelquechose)
- [Exercice n°11 - WHERE    avec LIKE 'quelquechose%' = commence par 'quelquechose'](#exercice-n11---where----avec-like-quelquechose--commence-par-quelquechose)
- [Exercice n°12 - WHERE    avec LIKE '%quelquechose%' = contient 'quelquechose'](#exercice-n12---where----avec-like-quelquechose--contient-quelquechose)
- [Exercice n°13 - WHERE   AND     OR](#exercice-n13---where---and-----or)
- [Exercice n°14 - ORDER BY](#exercice-n14---order-by)
- [Exercice n°15 - ORDER BY](#exercice-n15---order-by)
- [Exercice n°16 - AVG](#exercice-n16---avg)
- [Exercice n°17 - MIN, MAX, SUM](#exercice-n17---min-max-sum)
- [Exercice n°18 - GROUP BY](#exercice-n18---group-by)
- [Exercice n°19 - GROUP BY](#exercice-n19---group-by)
- [Exercice n°20 - GROUP BY](#exercice-n20---group-by)

## Introduction
Toute commande dans mysql doit se terminer par un point virgule ;

Si vous le faites pas mysql ne sait pas que vous avez terminé la commande en cours.

Pour savoir dans quelle base de données vous êtes actuellement, on va customiser notre prompt.
Dans la console mysql, tapez:
```bash
prompt <\d>
```

## Exercice n°1 - Importation des fichiers de base de données
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: mysql -u root -p
3. Entrez votre mot de passe
4. Importez le script qui va générer la base de données BlindCode: source BlindCode.sql (Normalement c'est déjà fait.)
5. Importez le script qui va générer la base de données Localites (Ca va prendre plus temps: attendez): source Localites.sql
6. Importez le script qui va générer la base de données Ventes: source Ventes.sql
7. Importez le script qui va générer la base de données Ventes: source Pays.sql
8. Faites un SHOW DATABASES;
9: Vous devriez voir dans la liste des bases de données: BlindCode, Localites, Ventes, Pays
10. Si vous avez des erreurs appelez-moi.

## Exercice n°2 - Notre premier SELECT *
1. Connectez-vous au SGBD MySQL: mysql -u root -p
2. Entrez votre mot de passe.
3. Si vous n'êtes pas dans la DB BlindCode, tapez: use BlindCode;
4. Ecrivez l'instruction qui affichez tous les enregistrements de la table Eleve: tous les champs à l'aide du caractère *
5. Ecrivez l'instruction qui affichez tous les enregistrements de la table Classe: tous les champs à l'aide du caractère *

## Exercice n°3 - SELECT ch1, ch2, etc.
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: mysql -u root -p
3. Entrez votre mot de passe
4. Si vous n'êtes pas dans la DB BlindCode, tapez: use BlindCode;
5. Affichez tous les enregistrements de la table Eleve avec les champs suivants: Nom, Prenom, Email
6. Affichez tous les enregistrements de la table Classe avec les champs: Nom, Lieux

## Exercice n°4 - Notre premier WHERE
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: mysql -u root -p
3. Entrez votre mot de passe
4. Si vous n'êtes pas dans la DB BlindCode, tapez: use BlindCode;
5. Affichez tous les élèves de sexe Féminin.
6. Affichez tous les élèves de sexe Masculin.
7. Affichez Le nom, le prénom, la localite des élèves qui habitent sur le CP 6890.

## Exercice n°5 - WHERE   AND
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: mysql -u root -p
3. Entrez votre mot de passe
4. Si vous n'êtes pas dans la DB BlindCode, tapez: use BlindCode
5. Affichez tous les élèves de Sexe Masculin ET ayant comme CP 1348

## Exercice n°6 - WHERE   IS NULL IS NOT NULL
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: mysql -u root -p
3. Entrez votre mot de passe
4. Si vous n'êtes pas dans la DB BlindCode, tapez: use BlindCode
5. Affichez tous les élèves qui n'ont pas de numéro de téléphone: On utilisera IS NULL
6. A l'inverse, affciez les élèves qui ont un numéro de téléphone: On utilisera IS NOT NULL: On peut faire autrement, rappelez-le moi :)

## Exercice n°7 - WHERE     AND
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: mysql -u root -p
3. Entrez votre mot de passe
4. Si vous n'êtes pas dans la DB BlindCode, tapez: use BlindCode
5. Affichez les élèves dont le code postal est dans les 4000

## Exercice n°8 - WHERE  sur une DATE
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: mysql -u root -p
3. Entrez votre mot de passe
4. Si vous n'êtes pas dans la DB BlindCode, tapez: use BlindCode
5. Affichez les élèves nés après 1980: Le format de la date est année/Mois/Jour
6. Affichez les élèves nés avant 1980: Le format de la date est année/Mois/Jour

## Exercice n°9 - WHERE sur des DATES
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: mysql -u root -p
3. Entrez votre mot de passe
4. Si vous n'êtes pas dans la DB BlindCode, tapez: use BlindCode
5. Affichez les élèves nés entre 1970 ET 1980.
6. Affichez les élèves qui ne sont pas nés entre 1970 ET 1980.

## Exercice n°10 - WHERE    avec LIKE '%quelquechose' = se termine par 'quelquechose'
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: mysql -u root -p
3. Entrez votre mot de passe
4. Si vous n'êtes pas dans la DB BlindCode, tapez: use BlindCode
5. Affichez les élèves qui ont une adresse de type gmail.com

## Exercice n°11 - WHERE    avec LIKE 'quelquechose%' = commence par 'quelquechose'
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: mysql -u root -p
3. Entrez votre mot de passe
4. Si vous n'êtes pas dans la DB BlindCode, tapez: use BlindCode
5. Affichez les élèves qui n'ont pas une adresse de type gmail.com

## Exercice n°12 - WHERE    avec LIKE '%quelquechose%' = contient 'quelquechose'
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: mysql -u root -p
3. Entrez votre mot de passe
4. Si vous n'êtes pas dans la DB BlindCode, tapez: use BlindCode
5. Affichez les élèves dont le nom commence par 'be'

## Exercice n°13 - WHERE   AND     OR
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: mysql -u root -p
3. Entrez votre mot de passe
4. Si vous n'êtes pas dans la DB Localite, tapez: use Localite
5. Affichez toutes les communes sur le code Postal 4280
6. Affichez toutes les communes sur le code Postal 4280 et dont la commune commence par 'b' ou par 'a'
7. Affichez les CP et les noms des communes de la Province de Liège: les CP sont compris entre 4000 et 4999

## Exercice n°14 - ORDER BY    
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: mysql -u root -p
3. Entrez votre mot de passe
4. Si vous n'êtes pas dans la DB BlindCode, tapez: use BlindCode
5. Affichez les champs: Prenom, Nom, Sexe, Naissance et triez dans l'ordre alphabétique sur le nom et puis le prenom.
6. Ensuite, triez dans l'ordre inverse le nom.
7. Triez les élèves du plus agé au plus jeune.
8. Ensuite, triez dans l'ordre inverse.

## Exercice n°15 - ORDER BY 
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: mysql -u root -p
3. Entrez votre mot de passe
4. Si vous n'êtes pas dans la DB BlindCode, tapez: use BlindCode;
5. 
On va ici créer une colonne dynamiquement dans le résultat qu'on nommera Age. On utilisera le AS comme vu au cours dans la Exercice n°"champs calculés"
Je vous demande d'afficher le prenom, nom et l'age des eleves.
Pour cela, je vous rappelle que la fonction YEAR()   permet de récupérer l'année d'une date et que CURDATE() donne la date du jour. Pour avoir l'age approximatif de l'élève on pourrait donc faire Année en cours(2021)-Année de naissance(ex:1974) AS Age
6. Reprenez la requête précédente et affichez les élèves du plus jeune au plus vieux.
7. Ensuite, du plus vieux au plus jeune.
8. Réécrivez vos deux requêtes pour ne traîter que des élèves de BlindCode4Data.

## Exercice n°16 - AVG
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: mysql -u root -p
3. Entrez votre mot de passe.
4. Si vous n'êtes pas dans la DB BlindCode, tapez: use BlindCode;
5. Reprenez la requête de la Exercice n°16.
6. Modifiez-la pour que l'on ait l'age moyen des élèves.

## Exercice n°17 - MIN, MAX, SUM
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: mysql -u root -p
3. Entrez votre mot de passe
4. Si vous n'êtes pas dans la DB Ventes, tapez: use ventes;
5. Affichez le prix maximum des produits
6. Affichez le prix minimum des produits
7. Affichez le prix total de tous les produits

## Exercice n°18 - GROUP BY
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: mysql -u root -p
3. Entrez votre mot de passe
4. Si vous n'êtes pas dans la DB Ventes, tapez: use ventes;
5. Affichez pour chaque catégorie, son stock. (Indice utilisez aussi SUM)

## Exercice n°19 - GROUP BY
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: mysql -u root -p
3. Entrez votre mot de passe.
4. Si vous n'êtes pas dans la DB BlindCode, tapez: use BlindCode;
5. Affichez pour chaque sexe, le nombre total. (Indice COUNT)
6. Affichez pour chaque nationalite, le nombre total.

## Exercice n°20 - GROUP BY
1. Allez dans le répertoire d'exercices SQL
2. Connectez-vous au SGBD MySQL: mysql -u root -p
3. Entrez votre mot de passe.
4. Si vous n'êtes pas dans la DB Pays, tapez: use Pays;
5. Faites un DESC Pays, pour voir sa structure.
6. Affichez pour chaque continent, combien il a de pays.