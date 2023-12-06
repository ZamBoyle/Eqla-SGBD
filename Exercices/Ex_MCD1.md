[:arrow_left:Revenir au menu.](../README.md)
<h1 id="sommaire" style="display: flex; align-items: center; justify-content: center;">
    <img src="/Theo/media/image1.png" style="height:50px">
    &nbsp;Le MCD - joueur / équipe
</h1>

## Introduction: Approche de la notion du MCD par tâtonnement/Discussion
Vous allez vous répartir en deux groupes. Chaque groupe travaillera sur le même exercice. Nous remettrons en commun les résultats de chaque groupe.

Ce que nous allons faire ici comme exercice peut être sujet à de grands débats. Et en fait, c'est toute la complexité de ce qu'on appelle le design d'un modèle entité/relation et intrinsèquement d'une base de données.

Vous allez devoir écrire ces entités et vous me donnerez à la fin votre modèle entité/relation.

Lors de la présentation, je vais confronter les deux résultats et nous allons voir ensemble les différences et les similitudes.

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

## II. Entité Joueur & Entité Equipe

### Partie 1 - Entité Elève, types de données, NULL, NOT NULL
Définissez au mieux ce qui caractérise un joueur de foot.
J'attends ici que vous me donniez des informations qui sont propres à chaque joueur.

Pour chaque propriété:
a. Indiquez le type de donnée de la propriété: entier, string, date, float
b. indiquez NULL ou NOT NULL.
NULL signifiera que la propriété peut ne pas avoir de valeur (pas d'email, pas de gsm, etc.). Donc peut avoir une valeur nulle (c'est à dire rien).
NOT NULL signifiera que la propriété DOIT impérativement avoir une valeur. Donc ne peut pas avoir une valeur nulle.

### Partie 2 - Entité Equipe
Faites de même avec l'Entité Equipe:
Qu'est-ce qui caractérise une équipe de foot.

### Partie 3 - Clef d'entité
Pour l'Entité Joueur trouvez une information, une propriété qui caractérise de manière unique un joueur .
Avec cette information, il est impossible d'avoir deux joueurs avec cette même propriété.

Faites de même avec l'Entité Equipe.

### Partie 4 - Relation entre l'entité Joueur et l'Entité Equipe
Je vous demande de lier l'Entité Joueur à l'Entité Equipe par une phrase.
Exemples:
1. Entité Animal et Entité Famille
==> chien (Entité Animal) FAIT PARTIE DES (Relation) des canidés(Entité Famille)
2. entité Commune et entité Province
==> Namur (Entité Commune) FAIT PARTIE DE (Relation) Namur (Entité Province)
==> Huy (Entité Commune) FAIT PARTIE DE (RELATION) Liège (Entité Province)

Ensuite faite la relation reliant Equipe à Joueur.

### Partie 5 - Cardinalité d'une relation
Indiquez la cardinalité de la relation entre Joueur et Equipe: minimum et maximum. 
Indiquez la cardinalité de la relation entre Equipe et Joueur: minimum et maximum.


### Partie 6 - Ajout d'un champ de liaison entre les deux entités
Ici, je vais vous demander d'ajouter un champ dans une des deux entités qui permettra de lier les deux entités entre elles: Joueur et Equipe.

Si vous ne trouvez pas ce n'est pas grave. Nous verrons cela ensemble.

### Partie 7 - MISE EN COMMUN



## III. Entités Equipe, Entraineur

### Partie 1 - Entité Entraineur, types de données, NULL, NOT NULL 

Faites comme pour le point I partie 1 pour l'Entité Joueur.

### Partie 2 - Clef d'entité

Faites comme pour le point I partie 3 pour les Entités Joueur et Equipe.

### Partie 4 - Relations
#### Partie 4.1 - Relation entre l'Entité Equipe et l'Entité Entraineur

Faites comme pour le point I partie 4 pour les Entités Equipe et l'Entité Entraineur.

### Partie 5 - Cardinalité d'une relation

A vous d'essayer d'écrire les cardinalités suivantes:
Equipe  ==> Cardinalité (min, max) RELATION ==> Entraineur
Entraineur  ==> Cardinalité (min, max) RELATION ==> Equipe

Reprenez les cardinalités maximales des relations précédentes et vous optiendrez le type de cardinalité: 1:1, 1:N ou N:N.

### Partie 6 - Comment lier les deux entités ?

Prenons l'exemple suivant l'équipe des U9 de l'UR Namur. Cette équipe a deux entraineurs: Patrick et Paul. Patrick est aussi entraineur de l'équipe des U10. Paul est aussi entraineur de l'équipe des U11.

Lorsque nous avions un joueur, nous pouvions le lier à une équipe. Nous ajoutions un champ dans l'entité Joueur qui permettait de lier le joueur à une équipe: une clef étrangère (equipe_id).

Et ici, comment faire pour lier tout ça ? Essayez de noter cela sur écran sous forme d'entité(s).

Y arrivez-vous ? Pourquoi à votre avis ? Comment dire à nos entités Equipe et Entraineur, qu'une équipe peut avoir plusieurs entraineurs et qu'un entraineur peut entrainer plusieurs équipes ? On met ça dans les entités ? Ou bien on doit faire autrement ? Créer autre chose ? Que de questions...

No stress on va ariver à la solution. Mais il faut se poser les bonnes questions.

### Partie 7 - MISE EN COMMUN
<!-- 
On va prendre les données suivantes:

Joueur
--
| id | nom | prenom | email | gsm | date_naissance | equipe_id |
|----|-----|--------|-------|-----|----------------|-----------|
| 1  | Dupont | Jean | jean.dupont@gmail.com | 0475/12.34.56 | 2005-01-01 | 1 |
| 2  | Piette Jacques | Gabriel | gabriel.piette-jacques@gmail.com | 0475/12.34.56 | 2014-08-22 | 1 |
| 3  | Dormal | Francky |  francky.dormal@gmail.com | 0475/12.34.56 | 2013-01-01 | 2 |


Equipe
--
| id | nom |
|----|-----|
| 1  | U9  |
| 2  | U10 |
| 3  | U11 |
| 4  | U12 |

Entraineur
--
| id | nom | prenom | email | gsm | date_naissance
|----|-----|--------|-------|-----|----------------
| 1  | Mapo | Patrick | patrick.mapo@gmail.com | 0475/12.34.56 | 1970-01-01
| 2  | Lee | Paul | paul.lee@gmail.com  | 0475/12.34.56 | 1980-03-07
-->

<!--
On va créer une table de liaison entre les deux entités Equipe et Entraineur. Cette table de liaison va contenir les clefs primaires des deux entités Equipe et Entraineur.

Equipe_Entraineur (N:N)
--
| equipe_id | entraineur_id |
|-----------|---------------|
| 1         | 1             |
| 1         | 2             |
| 2         | 1             |
| 3         | 2             |
-->






[:arrow_left:Revenir au menu.](../README.md)

---
&copy; 2023 [Johnny Piette](https://github.com/ZamBoyle).  
[![Creative Commons Attribution 4.0 International License](https://i.creativecommons.org/l/by/4.0/88x31.png)](https://creativecommons.org/licenses/by/4.0/)  
Ce travail est licencié sous [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/).   
_Vous pouvez copier, modifier, distribuer et représenter ce travail, même à des fins commerciales, à condition de donner le crédit approprié, fournir un lien vers la licence, et indiquer si des modifications ont été effectuées._
