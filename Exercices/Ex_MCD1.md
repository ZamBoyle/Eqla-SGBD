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
**Groupe 1**

- Anthony
- Christian
- Amir
- Karim

**Groupe 2**

- Carmen
- Baptiste
- Thomas
- Filippo

## II. Entité Joueur & Entité Equipe

### Partie 1 - Entité Joueur, types de données, NULL, NOT NULL
Définissez au mieux ce qui caractérise un joueur de foot.
J'attends ici que vous me donniez des informations qui sont propres à chaque joueur.

Pour chaque propriété:

a. Indiquez le type de donnée de la propriété: entier, string, date, float
b. indiquez `NULL` ou `NOT NULL`.

`NULL` signifiera que la propriété peut ne pas avoir de valeur (pas d'email, pas de gsm, etc.). Donc peut avoir une valeur nulle (c'est à dire rien).

`NOT NULL` signifiera que la propriété DOIT impérativement avoir une valeur. Donc ne peut pas avoir une valeur nulle.

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
La dernière fois, nous avons vu que lorsqu'une relation entre une entité joueur et une entité équipe était de type 1:N, nous pouvions ajouter un champ dans l'entité joueur qui permettait de lier le joueur à une équipe: une clef étrangère (equipe_id).

Je vais tout réexpliquer dans le second exercice: **III. Entité Entraineur, Entité Equipe**

<hr>

## III. Entités Equipe, Entraineur

### Partie 1 - Entité Entraineur, types de données, NULL, NOT NULL 

Faites comme pour le point I partie 1 pour l'Entité Joueur.

### Partie 2 - Clef d'entité

Faites comme pour le point I partie 3 pour les Entités Joueur et Equipe.

### Partie 3 - Relations
#### Partie 3.1 - Relation entre l'Entité Equipe et l'Entité Entraineur

Faites comme pour le point I partie 4 pour les Entités Equipe et l'Entité Entraineur.

### Partie 4 - Cardinalité d'une relation / Type de relation
### 4.1 Exercice
A vous d'essayer d'écrire les cardinalités suivantes:
Equipe  ==> Cardinalité (min, max) RELATION ==> Entraineur
Entraineur  ==> Cardinalité (min, max) RELATION ==> Equipe

Reprenez les cardinalités maximales des relations précédentes et vous obtiendrez une relation de type: 1:1, 1:N ou N:N.

### 4.2 Exemples
On va partir de deux entités abstraites A et B avec des noms d'attributs abstraits: attribut1, attribut2, attribut3, etc.

entité A
--

id | attribut1 | attribut2 | attribut3 | attribut4
-----|-----| -----|-----|-----

entité B
--

id | attribut1 | attribut2
-----|-----| -----|


- entité A, entité B ( 1, `1` )
- entité B, entité A ( 1, `1` )

> ==> le type de relation est 1 à 1 ou `1:1` car la cardinalité maximale est 1 pour les deux entités.
==> dans ce cas, on peut fusionner les deux entités en une seule entité sauf si on veut séparer les données pour une raison X ou Y.
==> on devra mettre une clef étrangère dans l'entité A pour faire le lien avec l'entité B ou l'inverse c'est selon le bon sens.

- entité A, entité B ( 1, `1` )
- entité B, entité A ( 1, `N` ) ou on peut l'écrire aussi (1, `*`)

> ==> le type de relation est 1 à N ou `1:N` car la cardinalité maximale est 1 pour l'entité A vers l'entité B et N pour l'entité B vers l'entité A.
==> on devra mettre la clef primaire de l'entité B dans l'entité A pour faire le lien entre les deux entités.

- entité A, entité B ( 1, `N` ) ou on peut l'écrire aussi (1, `*`)
- entité B, entité A ( 1, `N` ) ou on peut l'écrire aussi (1, `*`)

> ==> le type de relation est N à N ou `N:N`
Dans ce cas, il faut créer une entité intermédiaire soit entité A_B où l'on va mettre les clefs primaires des deux entités A et B pour créer une clef primaire composée.

entité A_B
---
a_id | b_id
-----|-----

### Partie 5 - Comment lier les deux entités ?

Prenons l'exemple suivant l'équipe des U9 de l'UR Namur. Cette équipe a deux entraineurs: Patrick et Paul. Patrick est aussi entraineur de l'équipe des U10. Paul est aussi entraineur de l'équipe des U11.

Lorsque nous avions un joueur, nous pouvions le lier à une équipe. Nous ajoutions un champ dans l'entité Joueur qui permettait de lier le joueur à une équipe: une clef étrangère (equipe_id).

Et ici, comment faire pour lier tout ça ? Essayez de noter cela sur écran sous forme d'entité(s).

Y arrivez-vous ? Pourquoi à votre avis ? Comment dire à nos entités Equipe et Entraineur, qu'une équipe peut avoir plusieurs entraineurs et qu'un entraineur peut entrainer plusieurs équipes ? On met ça dans les entités ? Ou bien on doit faire autrement ? Créer autre chose ? Que de questions...

No stress on va ariver à la solution. Mais il faut se poser les bonnes questions.

### Partie 6 - MISE EN COMMUN

On va prendre les données suivantes:

equipe
--
| id (clef) | nom 
|----|-----
| 1  | U9  
| 2  | U10 
| 3  | U11 
| 4  | U12 

joueur
--
| id (clef primaire) | nom | prenom | email | gsm | date_naissance | equipe_id (clef étrangère) 
|----|-----|--------|-------|-----|----------------|-----------
| 1  | Dupont | Jean | jean.dupont@gmail.com | 0475/12.34.56 | 2014-01-01 | 1 
| 2  | Piette Jacques | Gabriel | gabriel.piette-jacques@gmail.com | 0475/12.34.56 | 2014-08-22 | 1 
| 3  | Dormal | Francky |  francky.dormal@gmail.com | 0475/12.34.56 | 2013-01-01 | 2 
| 4  | Adam | Olive | olive.adam@gmail.com | 0475/12.34.56 | 2012-01-01 | 3  

Dans la définition de l'entité joueur, nous avons ajouté un champ `equipe_id` qui est une clef étrangère. Cette clef étrangère fait référence à la clef primaire de l'entité `equipe`. En effet, de cette manière, nous pouvons lier un joueur à une équipe et une seule.

entraineur
--
| id  (clef) | nom | prenom | email | gsm | date_naissance
|----|-----|--------|-------|-----|----------------
| 1  | Mapo | Patrick | patrick.mapo@gmail.com | 0475/12.34.56 | 1970-01-01
| 2  | Lee | Paul | paul.lee@gmail.com  | 0475/12.34.56 | 1980-03-07


On va créer une table de liaison entre les deux entités Equipe et Entraineur. Cette table de liaison va contenir les clefs primaires des deux entités Equipe et Entraineur.

equipe_entraineur (N:N)
--
| equipe_id (clef) | entraineur_id (clef) |
|-----------|---------------|
| 1         | 1             |
| 1         | 2             |
| 2         | 1             |
| 3         | 2             |

La table `equipe_entraineur` est conçue pour établir des relations multiples entre les équipes et les entraîneurs. Elle possède deux colonnes principales : `equipe_id` et `entraineur_id`. Chacune de ces colonnes contient des identifiants référençant respectivement les tables `equipe` et `entraineur`.

- `equipe_id` : Référence l'identifiant unique d'une équipe dans la table `equipe`. 
- `entraineur_id` : Référence l'identifiant unique d'un entraîneur dans la table `entraineur`.

La clé primaire de la table `equipe_entraineur` est une combinaison de `equipe_id` et `entraineur_id`, formant ainsi une clé composée. Cette structure assure qu'une même paire équipe-entraîneur ne peut être enregistrée qu'une seule fois, préservant l'unicité de chaque relation.

Dans votre exemple :

- La première ligne (`equipe_id = 1`, `entraineur_id = 1`) représente une relation entre l'équipe 1 et l'entraîneur 1.
- La deuxième ligne (`equipe_id = 1`, `entraineur_id = 2`) indique que l'équipe 1 est également entraînée par l'entraîneur 2.
- La troisième ligne (`equipe_id = 2`, `entraineur_id = 1`) montre que l'entraîneur 1 entraîne aussi l'équipe 2.
- La quatrième ligne (`equipe_id = 3`, `entraineur_id = 2`) illustre que l'équipe 3 est entraînée par l'entraîneur 2.

Cette table intermédiaire permet donc de multiples associations entre les équipes et les entraîneurs, illustrant parfaitement la nature d'une relation N:N.

## IV. Qui suis-je ?

Soit les données suivantes:

joueur
--
| id (clef primaire) | nom | prenom | email | gsm | date_naissance | equipe_id (clef étrangère) 
|----|-----|--------|-------|-----|----------------|-----------
| 1  | Dupont | Jean | jean.dupont@gmail.com | 0475/12.34.56 | 2014-01-01 | 1 
| 2  | Piette Jacques | Gabriel | gabriel.piette-jacques@gmail.com | 0475/12.34.56 | 2014-08-22 | 1 
| 3  | Dormal | Francky |  francky.dormal@gmail.com | 0475/12.34.56 | 2013-01-01 | 2 
| 4  | Adam | Olive | olive.adam@gmail.com | 0475/12.34.56 | 2012-01-01 | 3  
| 5   | Martin           | Hugo         | hugo.martin@gmail.com                | 0476/12.34.56 | 2014-05-12     | 1         |
| 6   | Bernard          | Léo          | leo.bernard@gmail.com                | 0476/12.34.57 | 2014-07-08     | 1         |
| 7   | Petit            | Alice        | alice.petit@gmail.com                | 0476/12.34.58 | 2014-03-15     | 1         |
| 8   | Leroy            | Chloé        | chloe.leroy@gmail.com                | 0476/12.34.59 | 2014-09-20     | 1         |
| 9   | Moreau           | Nathan       | nathan.moreau@gmail.com              | 0477/12.34.56 | 2013-02-22     | 2         |
| 10  | Simon            | Emma         | emma.simon@gmail.com                 | 0477/12.34.57 | 2013-11-30     | 2         |
| 11  | Michel           | Lucas        | lucas.michel@gmail.com               | 0477/12.34.58 | 2013-04-18     | 1         |
| 12  | Lefebvre         | Jade         | jade.lefebvre@gmail.com              | 0477/12.34.59 | 2013-06-24     | 2         |
| 13  | Leroux           | Ethan        | ethan.leroux@gmail.com               | 0478/12.34.56 | 2012-01-30     | 3         |
| 14  | Roy              | Zoé          | zoe.roy@gmail.com                    | 0478/12.34.57 | 2012-05-15     | 3         |
| 15  | Girard           | Théo         | theo.girard@gmail.com                | 0478/12.34.58 | 2012-08-09     | 3         |
| 16  | Bonnet           | Louise       | louise.bonnet@gmail.com              | 0478/12.34.59 | 2012-10-20     | 3         |
| 17  | Dupuis           | Gabriel      | gabriel.dupuis@gmail.com             | 0479/12.34.56 | 2011-03-25     | 4         |
| 18  | Lambert          | Jules        | jules.lambert@gmail.com              | 0479/12.34.57 | 2011-06-17     | 4         |
| 19  | Fontaine         | Léa          | lea.fontaine@gmail.com               | 0479/12.34.58 | 2011-12-05     | 4         |
| 20  | Rousseau         | Adam         | adam.rousseau@gmail.com              | 0479/12.34.59 | 2011-09-29     | 4         |



entraineur
--
| id  (clef) | nom | prenom | email | gsm | date_naissance
|----|-----|--------|-------|-----|----------------
| 1  | Mapo | Patrick | patrick.mapo@gmail.com | 0475/12.34.56 | 1970-01-01
| 2  | Lee | Paul | paul.lee@gmail.com  | 0475/12.34.56 | 1980-03-07
| 3   | Dubois      | Marie        | marie.dubois@gmail.com       | 0475/23.45.67 | 1975-04-15     |
| 4   | Durand      | Bruno        | bruno.durand@gmail.com       | 0475/23.45.68 | 1982-08-22     |
| 5   | Lemoine     | Nathalie     | nathalie.lemoine@gmail.com   | 0475/23.45.69 | 1978-11-30     |


equipe_entraineur
--
| equipe_id | entraineur_id |
|-----------|---------------|
| 1         | 1             |
| 1         | 3             |
| 2         | 2             |
| 2         | 4             |
| 3         | 1             |
| 3         | 5             |
| 4         | 2             |
| 4         | 3             |

equipe
--
| id (clef) | nom 
|----|-----
| 1  | U9  
| 2  | U10 
| 3  | U11 
| 4  | U12 

### 1. Exercices table joueur
1. Question : Examinez la table joueur pour trouver le nom et prénom du joueur ayant l'ID 13, puis consultez les tables equipe et equipe_entraineur pour déterminer son équipe et ses entraîneurs.
2. Question : Trouvez dans la table joueur le nom complet, l'adresse email, et l'équipe du joueur avec l'ID 17. Identifiez ensuite les entraîneurs de cette équipe.
3. Question : Cherchez le numéro de GSM et la date de naissance du joueur avec l'ID 10 dans la table joueur, puis déterminez son équipe et ses entraîneurs.

### 2. Exercices table equipe
1. Identifiez tous les joueurs (nom, prénom) de l'équipe U10 dans la table joueur.
2. Regardez qui sont les entraîneurs de l'équipe U12.
3. Retrouvez les adresses email de tous les joueurs de l'équipe U9 dans la table joueur.

### 3. Exercices table entraineur
1. Quelles équipes sont entraînées par l'entraîneur ayant l'ID 1 ? Consultez la table equipe_entraineur pour cette information.
2. Trouvez les joueurs de l'équipe (ou des équipes) entraînée(s) par l'entraîneur avec l'ID 5, en utilisant les tables equipe_entraineur et joueur.
3. Quel est le nom complet et la date de naissance de l'entraîneur avec l'ID 3 ? Vérifiez aussi quelles équipes il entraîne.

<!--
Voici les solutions pour chaque énigme basée sur les tables `joueur`, `equipe`, et `entraineur` :

### 4. Solutions des énigmes de la table `joueur` :

1. **Joueur ID 13** :
   - **Nom et Prénom** : Leroux Ethan
   - **Équipe** : U11
   - **Entraîneurs** : Paul Lee (ID 2) et Nathalie Lemoine (ID 5)

2. **Joueur ID 17** :
   - **Nom complet** : Dupuis Gabriel
   - **Adresse Email** : gabriel.dupuis@gmail.com
   - **Équipe** : U12
   - **Entraîneurs** : Bruno Durand (ID 4) et Marie Dubois (ID 3)

3. **Joueur ID 10** :
   - **Numéro de GSM** : 0477/12.34.57
   - **Date de Naissance** : 2013-11-30
   - **Équipe** : U10
   - **Entraîneurs** : Paul Lee (ID 2) et Bruno Durand (ID 4)

### 5. Solutions des énigmes de la table `equipe` :

1. **Joueurs de l'équipe U10** :
   - Nathan Moreau
   - Emma Simon
   - Lucas Michel
   - Jade Lefebvre

2. **Entraîneurs de l'équipe U12** :
   - Bruno Durand (ID 4)
   - Marie Dubois (ID 3)

3. **Adresses Email des joueurs de l'équipe U9** :
   - jean.dupont@gmail.com
   - gabriel.piette-jacques@gmail.com
   - hugo.martin@gmail.com
   - leo.bernard@gmail.com
   - alice.petit@gmail.com
   - chloe.leroy@gmail.com

### 6. Solutions des énigmes de la table `entraineur` :

1. **Équipes entraînées par l'entraîneur ID 1 (Patrick Mapo)** :
   - Équipes : U9 et U11

2. **Joueurs de l'équipe(s) entraînée(s) par l'entraîneur ID 5 (Nathalie Lemoine)** :
   - Équipe : U11
   - Joueurs : Ethan Leroux, Zoé Roy, Théo Girard, Louise Bonnet

3. **Informations sur l'entraîneur ID 3 (Marie Dubois)** :
   - **Nom complet** : Marie Dubois
   - **Date de Naissance** : 1975-04-15
   - **Équipes entraînées** : U12 et U10

Ces solutions sont basées sur les informations fournies précédemment pour les tables `joueur`, `equipe`, `entraineur`, et `equipe_entraineur`.
-->


[:arrow_left:Revenir au menu.](../README.md)

---
&copy; 2023 [Johnny Piette](https://github.com/ZamBoyle).  
[![Creative Commons Attribution 4.0 International License](https://i.creativecommons.org/l/by/4.0/88x31.png)](https://creativecommons.org/licenses/by/4.0/)  
Ce travail est licencié sous [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/).   
_Vous pouvez copier, modifier, distribuer et représenter ce travail, même à des fins commerciales, à condition de donner le crédit approprié, fournir un lien vers la licence, et indiquer si des modifications ont été effectuées._
