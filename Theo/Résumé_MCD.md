[:arrow_left:Revenir au menu.](../Theo/README.md)

# Résumé : Cardinalité, association
## 1. Association de type 1 : N
- 1 élève fait partie d’une et une seule classe : cardinalité 1,1 (Cardinalité maximale 1)
- 1 classe a 1 ou plusieurs élèves : cardinalité 1,N (Cardinalité maximale N)

Pour connaître le type d’association on prend les cardinalités maximales de chaque entité. Donc 1 d’élève vers classe. Et N de classe vers élève.
 Donc c’est bien une Association de type 1 :N
Comme 1 élève fait partie d’une et une seule classe on met l’Identifiant de la classe dont il fait partie dans la table élève comme clef étrangère. Et on mettra la valeur de l’identifiant de la classe.

Regardez les deux tables suivantes qui illustrent bien cette association de type 1 :N
**Table Classe**
|            |              |        |
|------------|--------------|--------|
|**IdClasse** (Clef primaire)|**Nom**       |**Lieu**|
|1           |BlindCode     |BXL     |
|2           |BlindCode4Data|LLN     |

**Table Eleve**
|           |          |          |            |
|-----------|----------|----------|------------|
|**IdEleve** (Clef primaire)|**Prénom**|**Nom**   |**IdClasse** (clef étrangère)|
|1          |Alain     |Dufrasne  |2           |
|2          |Bruno     |Defalque  |2           |
|3          |Eleonor   |Sana      |2           |
|4          |Jessie    |Bakashika |2           |
|5          |Mahsum    |Kizmaz    |2           |
|6          |Maxime    |Borsen    |2           |
|7          |Isaac     |Tcheuyassi|2           |
|8          |Matthieu  |DARFEUILLE|1           |
|9          |Simon     |DESSEILLE |1           |
|10         |Ibrahim   |TAMDITI   |1           |
|11         |Sophie    |De BACKER |1           |
|12         |Yves      |BEYA      |1           |
|13         |Mounir    |BEN AHMED |1           |

Chaque ligne/enregistrement de la table/du tableau Eleve correspond à un élève. Et on met dans la dernière colonne dans quelle classe il fait partie car il ne fait partie que d’une classe. Cet identifiant va nous permettre de faire le lien entre le champ IdClasse  clé étrangère de la table Eleve et le champ IdClasse clé primaire de la table Classe. En effet, on va regarder dans la table Classe quelle classe aura l’IdClasse = 2 et on verra que la classe dont l’IdClasse = 2 est BlindCode4Data et qu’elle se donne à LLN. Pareil pour l’IdClasse = 1, on verra que c’est la classe BlindCode et se donne à BXL.

## 2. Association de type N :N
Reprenons notre exemple. Imaginons maintenant qu’un élève fait partie de plusieurs classes.
- 1 élève fait partie d’une ou plusieurs classe : cardinalité 1,N (Cardinalité maximale N)
- 1 classe a 1 ou plusieurs élèves cardinalité : 1, N (Cardinalité maximale N)

Comme c’est une association de type N :N
La table Classe ne change pas
|            |              |        |
|------------|--------------|--------|
|**IdClasse**|**Nom**       |**Lieu**|
|1           |BlindCode     |BXL     |
|2           |BlindCode4Data|LLN     |


La table Eleve devient
|           |          |          |
|-----------|----------|----------|
|**IdEleve**|**Prénom**|**Nom**   |
|1          |Alain     |Dufrasne  |
|2          |Bruno     |Defalque  |
|3          |Eleonor   |Sana      |
|4          |Jessie    |Bakashika |
|5          |Mahsum    |Kizmaz    |
|6          |Maxime    |Borsen    |
|7          |Isaac     |Tcheuyassi|
|8          |Matthieu  |DARFEUILLE|
|9          |Simon     |DESSEILLE |
|10         |Ibrahim   |TAMDITI   |
|11         |Sophie    |De BACKER |
|12         |Yves      |BEYA      |
|13         |Mounir    |BEN AHMED |

Ici la complexité réside dans le fait que si un élève fait partie de 5 classes on devrait alors 5 champs dans la table élèves, IdClass1, IdClasse2, IdClasse3, IdClasse4, IdClasse5. Ça pourrait se faire mais conceptuellement parlant c’est incorrect car ce n’est pas une solution générique qui marche dans tous les cas, c’est-à-dire qui tient en compte qu’un élève pourrait faire partie d’un nombre très très important de classes. La solution générique est la table intermédiaire. 

Cette table intermédiaire EleveCours représente dans quelles classes se trouve un élève. Cette solution est générique car elle permet à un élève de suivre autant de cours qu’il veut et une classe peut avoir autant d’élèves qu’on veut.
|           |            |
|-----------|------------|
|**IdEleve**|**IdClasse**|
|1          |2           |
|2          |2           |
|3          |2           |
|4          |2           |
|5          |2           |
|6          |2           |
|7          |2           |
|2          |1           |
|7          |1           |
|8          |1           |
|9          |1           |
|10         |1           |
|11         |1           |
|12         |2           |
|13         |2           |


Ici nous avons tous les élèves de BXL et Louvain-La-Neuve. Et aussi Bruno (IdEleve=2) et Isaac (IdEleve=7) qui sont dans les deux classes : BlindCode (1) &amp; BlindCode4Data (2).

On définira IdEleve &amp; IdClasse comme clés primaires. De cette manière, le SGBD veillera à ce qu’aucun élève ne soit inscrit deux fois dans la même classe. En effet, pour chaque enregistrement/ligne de la table/du tableau EleveCours le couple IdEleve, IdClasse sera unique. Si on essaie d’ajouter une seconde fois un même élève dans une classe où il y fait déjà partie, la base de données va générer une erreur indiquant que l’élève en question est déjà présente dans ladite classe.

## 3. Association de type 1 :1
Depuis notre exemple. Imaginons que notre classe a un et un seul formateur. Et un formateur donne cours dans une et une seule classe.
Ici, il faut voir la pertinence d’une association de type 1 :1 et si un jour notre association ne risque pas d’évoluer vers un modèle 1 :N.  Si ce n’est pas le cas, il faudra voir s’il est judicieux d’avoir une table formateur. Et si fonctionnellement il y a une raison de ne pas fusionner les champs de la table formateur dans la table Classe. Tout va dépendre si l’entité Formateur est fonctionnellement forte et mérite de rester séparée de la table classe : date de contrat, année de naissance, adresse, APE, Sexe, etc. 

Si on fusionne les champs de la table Formateur dans la table Classe :
La table Classe pourrait devenir :
|            |              |        |                   |                |
|------------|--------------|--------|-------------------|----------------|
|**IdClasse**|**Nom**       |**Lieu**|**PrenomFormateur**|**NomFormateur**|
|1           |BlindCode     |BXL     |Johnny             |Piette          |
|2           |BlindCode4Data|LLN     |Philip             |Dupont          |


Si on fusionne les champs de la table Classe dans la table Formateur :
La table Formateur pourrait devenir
|               |       |          |             |              |
|---------------|-------|----------|-------------|--------------|
|**IdFormateur**|**Nom**|**Prenom**|**NomClasse**|**LieuClasse**|
|1              |Piette |Johnny    |Blindcode    |BXL           |
|2              |Dupont |Philip    |Blind4Data   |LLN           |

Si on garde des tables bien distinctes
La table Classe devient :
|            |              |        |               |
|------------|--------------|--------|---------------|
|**IdClasse**|**Nom**       |**Lieu**|**IdFormateur**|
|1           |BlindCode     |BXL     |1              |
|2           |BlindCode4Data|LLN     |2              |

La classe Formateur devient
|               |       |          |            |
|---------------|-------|----------|------------|
|**IdFormateur**|**Nom**|**Prenom**|**IdClasse**|
|1              |Piette |Johnny    |1           |
|2              |Dupont |Philip    |2           |


Mais dans la réalité, une classe aura plusieurs formateurs et un formateur aura plusieurs classes : Association de type N : N.

[:arrow_left:Revenir au menu.](../Theo/README.md)

---
_[Eqla](http://www.eqla.be) 2021 - Cours d'introduction aux SGBD_