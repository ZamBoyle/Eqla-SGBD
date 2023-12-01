# Le MCD - Modèle Conceptuel de Données

Dans cet exercice, nous allons identifier les entités et les relations entre ces entités d'une facture. Nous resterons simple pour le moment.

Vous allez devoir écrire ces entités et vous me donnerez à la fin votre modèle entité/relation.

## I. Vous allez vous répartir en deux groupes

Groupe 1

-
-
-
-

Groupe 2

-
-
-
-

## II. Analyse d'une facture

Dans un soucis d'accessibilité, je vous mets ici le contenu de la facture en texte pur.

Soit la facture suivante:

Facture
-------
Numéro de la facture: 2019-0001
Date de la facture: 21/02/2019
Echeance: 21/03/2019
Compte bancaire: BE12 3456 7890 1234
Communication: 2019-0001


Emetteur: AI Solutions
Adresse: Rue de la Nage, 8, 5300 Andenne
TVA: BE 123 456 000
Téléphone: 081/12.34.56
Email: factures@solutions.ai
Web: www.solutions.ai

Adressée à: BlindCode
Numéro de client: 123456789
Adresse: Rue de la Science 8, 5000 Namur
TVA: BE 123 456 789

Lignes de facture
---------------
Produit: Oculus Quest 3
Identifiant: 78145
Quantité: 1
Prix unitaire: 500€

Produit: Ecran 24" 4K 144Hz Philips
Identifiant: 78146
Quantité: 2
Prix unitaire: 400€

Produit: Souris Logitech G502
Identifiant: 78147
Quantité: 1
Prix unitaire: 80€

Produit: Clavier Logitech G910
Identifiant: 78148
Quantité: 3
Prix unitaire: 150€

Prix total: 1.830€
Prix TVAC: 2.214,30€

## Partie 1 - Identification des entités et des propriétés

Vous allez devoir identifier les entités de cette facture. Pour chaque entité, vous allez devoir me donner les propriétés de cette entité. Pour chaque propriété, vous allez devoir me donner le type de donnée de cette propriété (entier, string, date, float, etc.). Vous allez devoir me dire si cette propriété peut être NULL ou NOT NULL.

## Partie 2 - Relations entre les entités

Essayez de trouver les relations entre les entités. Trouvez déjà en français les relations entre entités.

Vous allez devoir me dire si la relation est 1:1, 1:N, N:1 ou N:N.

Pour rappel
- 1:1 signifie qu'une entité A est liée à une et une seule entité B. 
- 1:N signifie qu'une entité A est liée à une ou plusieurs entités B. 
- N:N signifie qu'une entité A est liée à une ou plusieurs entités B et qu'une entité B est liée à une ou plusieurs entités A.


Partie 5 - Cardinalité d'une relation
========
Si on reprend l'exemple des communes et des provinces.
Une Commune fait partie d'une et une seule Province: Sa cardinalité s'écrit 1,1 (Le premier 1 est le nombre minimum de Province et le second est le nombre maximum de Provinces).
A l'inverse Une Province a 1 ou plusieurs Communes: Sa cardinalité s'écrit 1, N (Le 1 est le nombre minimum de Communes et N est un nombre >1 (Donc plusieurs))

A vous d'essayer d'écrire les cardinalités suivantes:
Eleve  ==> (Cardinalité) RELATION ==> Classe
Classe ==> (Cardinalité) RELATION ==> Eleve
Notez que l'on considère dans ce cas (pour le moment) qu'un élève fait partie d'une seule classe.

====================================================

II. MISE EN COMMUN
==================

III. Entités Cours, Formateur
=============================
Partie 1 - Entité Cours, types de données, NULL, NOT NULL 
========
Faites comme pour le point I partie 1 pour l'Entité Cours.

Partie 2 - Entité Formateur
========
Faites comme pour le point I partie 2 pour l'Entité Formateur.

Partie 3 - Clef d'entité
========
Faites comme pour le point I partie 3 pour les Entités Cours et Formateur.

Partie 4.1 - Relation entre l'Entité Cours et l'Entité Formateur
==========
Faites comme pour le point I partie 4 pour les Entités Cours et l'Entité Formateur.

Partie 4.2 - Relation entre l'Entité Classe et l'Entité Cours
==========
Faites comme pour le point I partie 4 pour les Entités Cours et Classe.

Partie 5 - Cardinalité d'une relation
========
A vous d'essayer d'écrire les cardinalités suivantes:
Classe  ==> (Cardinalité) RELATION ==> Cours
Cours  ==> (Cardinalité) RELATION ==> Classe

Cours  ==> (Cardinalité) RELATION ==> Formateur
Formateur ==> (Cardinalité) RELATION ==> Cours

IV. MISE EN COMMUN
==================

V. Clef étrangère
=================

Partie 1 - Clef étrangère 
========
Votre entité Eleve  est composée de propriétés.
Votre entité Classe est composée de propriétés.

Essayez d'ajouter une propriété dans l'entité Eleve.
Cette nouvelle propriété doit venir de l'entité Classe. Et doit identifier de manière unique votre entité Classe.
En fait, comment se nomme cette propriété dans l'entité classe ?
