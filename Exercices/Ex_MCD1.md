[:arrow_left:Revenir au menu.](../README.md)
<h1 id="sommaire" style="display: flex; align-items: center; justify-content: center;">
    <img src="/Theo/media/image1.png" style="height:50px">
    &nbsp;Le MCD - Elève / Classe
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

## II. Entité Eleve & Entité Classe

### Partie 1 - Entité Elève, types de données, NULL, NOT NULL
Définissez au mieux ce qui caractérise un élève d'une des classes de BlindCode.
J'attends ici que vous me donniez des informations qui sont propres à chaque élève.
Pensez à ce qu'on vous demande quand vous vous inscrivez dans une école.

Pour chaque propriété:
a. Indiquez le type de donnée de la propriété: entier, string, date, float
b. indiquez NULL ou NOT NULL.
NULL signifiera que la propriété peut ne pas avoir de valeur (pas d'email, pas de gsm, etc.). Donc peut avoir une valeur nulle (c'est à dire rien).
NOT NULL signifiera que la propriété DOIT impérativement avoir une valeur. Donc ne peut pas avoir une valeur nulle.

### Partie 2 - Entité Classe
Faites de même avec l'Entité Classe:
Qu'est-ce qui caractérise votre classe de Louvain-La-Neuve à celle de BXL.

### Partie 3 - Clef d'entité
Pour l'Entité Eleve trouvez une information, une propriété qui caractérise de manière unique un Eleve.
Avec cette information, il est impossible d'avoir deux élèves avec cette même propriété.

Faites de même avec l'Entité Classe.

### Partie 4 - Relation entre l'entité Elève et l'Entité Classe
Je vous demande de lier l'Entité Elève à l'Entité Classe par une phrase.
Exemples:
1. Entité Animal et Entité Famille
==> chien (Entité Animal) FAIT PARTIE DES (Relation) des canidés(Entité Famille)
2. entité Commune et entité Province
==> Namur (Entité Commune) FAIT PARTIE DE (Relation) Namur (Entité Province)
==> Huy (Entité Commune) FAIT PARTIE DE (RELATION) Liège (Entité Province)

Ensuite faite la relation reliant Classe à Elève.

### Partie 5 - Cardinalité d'une relation
Pour rappel
- 1:1 signifie qu'une entité A est associée à une entité B et inversément.
- 1:N signifie qu'une entité A est associée à plusieurs entités B et qu'une entité B peut être liée à une entité A. 
- N:N signifie qu'une entité A est liée à une ou plusieurs entités B et qu'une entité B est liée à une ou plusieurs entités A.

### Partie 6 - Ajout d'un champ de liaison entre les deux entités
Ici, je vais vous demander d'ajouter un champ dans une des deux entités qui permettra de lier les deux entités. Discutez entre vous. Si vous avez déjà fait la formation BlindCode, je vous demande de laisser chercher les autres.

Si vous ne trouvez pas ce n'est pas grave. Nous verrons cela ensemble.

### Partie 7 - Bonus

Précédemment, nous avons vu que l'on considérait qu'un élève faisait partie d'une seule classe. Mais si on considérait qu'un élève pouvait faire partie de plusieurs classes. 

- Comment écririez-vous la cardinalité de la relation entre l'entité Elève et l'entité Classe ?
- Comment pourriez-vous lier les deux entités ? 

### Partie 8 - MISE EN COMMUN



## III. Entités Cours, Formateur

### Partie 1 - Entité Cours, types de données, NULL, NOT NULL 

Faites comme pour le point I partie 1 pour l'Entité Cours.

### Partie 2 - Entité Formateur

Faites comme pour le point I partie 2 pour l'Entité Formateur.

### Partie 3 - Clef d'entité

Faites comme pour le point I partie 3 pour les Entités Cours et Formateur.

### Partie 4 - Relations
#### Partie 4.1 - Relation entre l'Entité Cours et l'Entité Formateur

Faites comme pour le point I partie 4 pour les Entités Cours et l'Entité Formateur.

#### Partie 4.2 - Relation entre l'Entité Classe et l'Entité Cours

Faites comme pour le point I partie 4 pour les Entités Cours et Classe.

### Partie 5 - Cardinalité d'une relation

A vous d'essayer d'écrire les cardinalités suivantes:
Classe  ==> (Cardinalité) RELATION ==> Cours
Cours  ==> (Cardinalité) RELATION ==> Classe

Cours  ==> (Cardinalité) RELATION ==> Formateur
Formateur ==> (Cardinalité) RELATION ==> Cours

### Partie 6 - MISE EN COMMUN


## IV. Clef mystère (pour ne pas la citer)

### Partie 1 - Clef mystère
Votre entité Eleve  est composée de propriétés.
Votre entité Classe est composée de propriétés.

- Essayez d'ajouter une propriété dans l'entité Eleve: Cette nouvelle propriété doit venir de l'entité Classe. Et doit identifier de manière unique votre entité Classe.
- En fait, comment se nomme cette propriété dans l'entité classe ?
- Et comment se nomme cette propriété dans l'entité Eleve ?


[:arrow_left:Revenir au menu.](../README.md)

---
&copy; 2023 [Johnny Piette](https://github.com/ZamBoyle).  
[![Creative Commons Attribution 4.0 International License](https://i.creativecommons.org/l/by/4.0/88x31.png)](https://creativecommons.org/licenses/by/4.0/)  
Ce travail est licencié sous [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/).   
_Vous pouvez copier, modifier, distribuer et représenter ce travail, même à des fins commerciales, à condition de donner le crédit approprié, fournir un lien vers la licence, et indiquer si des modifications ont été effectuées._
