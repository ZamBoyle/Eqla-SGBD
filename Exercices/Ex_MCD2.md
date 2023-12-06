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

## Partie 5 - Cardinalité d'une relation
Pour les couples d'entités suivantes, vous donnerez la cardinalité de la relation entre les deux entités (minimum et maximum). Donc vous notez simplement entre parenthèse le minimum et le maximum. 

- client, commande (  ,  )
- commande, client (  ,  )

- produit, commande (  ,  )
- commande, produit (  ,  )

- société (émeteur), commande (  ,  )
- commande, société (émeteur) (  ,  )

- client, facture (  ,  )
- facture, client (  ,  )

- facture, commande (  ,  )
- commande, facture (  ,  )

[:arrow_left:Revenir au menu.](../README.md)

---
&copy; 2023 [Johnny Piette](https://github.com/ZamBoyle).  
[![Creative Commons Attribution 4.0 International License](https://i.creativecommons.org/l/by/4.0/88x31.png)](https://creativecommons.org/licenses/by/4.0/)  
Ce travail est licencié sous [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/).   
_Vous pouvez copier, modifier, distribuer et représenter ce travail, même à des fins commerciales, à condition de donner le crédit approprié, fournir un lien vers la licence, et indiquer si des modifications ont été effectuées._

