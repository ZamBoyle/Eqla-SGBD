# Correction des Exercices sur les Formes Normales

<h2> Table des matières</h2>

<!-- @import "[TOC]" {cmd="toc" depthFrom=2 depthTo=6 orderedList=false} -->

<!-- code_chunk_output -->

- [Exercice n°1 - 1FN](#exercice-n1---1fn)
  - [Table Originale pour l'Exercice 1](#table-originale-pour-lexercice-1)
  - [Problèmes à Résoudre pour la 1FN](#problèmes-à-résoudre-pour-la-1fn)
  - [Correction pour la 1FN](#correction-pour-la-1fn)
  - [Justification des Changements](#justification-des-changements)
- [Exercice n°2 - 2FN](#exercice-n2---2fn)
  - [Table "Inventaire" en 1FN pour l'Exercice 2](#table-inventaire-en-1fn-pour-lexercice-2)
  - [Exercice 2 (2FN)](#exercice-2-2fn)
    - [Problème à Résoudre pour la 2FN](#problème-à-résoudre-pour-la-2fn)
    - [Correction pour la 2FN](#correction-pour-la-2fn)
  - [Justification des Changements](#justification-des-changements-1)
- [Exercice n°3 - 3FN](#exercice-n3---3fn)
  - [Table Originale pour l'Exercice 3](#table-originale-pour-lexercice-3)
  - [Identification des Dépendances Transitives](#identification-des-dépendances-transitives)
  - [Restructuration pour la 3FN](#restructuration-pour-la-3fn)
  - [Justification des Changements](#justification-des-changements-2)

<!-- /code_chunk_output -->


---
## Exercice n°1 - 1FN
Voyons comment corriger l'exercice n°1 pour mettre la table "Inventaire" en Première Forme Normale (1FN).

### Table Originale pour l'Exercice 1

**Inventaire**
```
produit_id | nom               | fournisseurs
-----------|-------------------|-------------
1          | Claviers, Souris  | ABC Ltd, XYZ Inc
2          | Moniteurs         | ABC Ltd
```

### Problèmes à Résoudre pour la 1FN

1. **Valeurs Non Atomiques** : Les colonnes `nom` et `fournisseurs` contiennent des valeurs non atomiques (plusieurs valeurs dans une seule colonne).

### Correction pour la 1FN

Pour mettre cette table en 1FN, chaque champ doit contenir une seule valeur (valeur atomique) et chaque enregistrement doit être unique.

1. **Diviser les Valeurs Non Atomiques** :
   - Diviser les valeurs multiples dans les colonnes `nom` et `fournisseurs` en enregistrements distincts.

2. **Nouvelle Structure de Table** :

   **Inventaire (1FN)**
   ```
   produit_id | nom       | fournisseur
   -----------|-----------|------------
   1          | Clavier   | ABC Ltd
   1          | Clavier   | XYZ Inc
   1          | Souris    | ABC Ltd
   1          | Souris    | XYZ Inc
   2          | Moniteur  | ABC Ltd
   ```

### Justification des Changements

- Chaque enregistrement dans la table "Inventaire" contient maintenant des valeurs atomiques dans chaque champ.
- Les produits et les fournisseurs sont clairement séparés dans des enregistrements distincts, ce qui rend la table conforme à la 1FN.
- Cette structure facilite les requêtes et les mises à jour sur la base de données, car chaque association produit-fournisseur est clairement identifiée.

Ces modifications garantissent que la table "Inventaire" est en Première Forme Normale, améliorant ainsi l'intégrité et la maintenance des données dans la base de données.

---

## Exercice n°2 - 2FN
D'accord, passons à l'exercice n°2, en prenant en compte le renommage des colonnes pour la table "Inventaire" que vous avez spécifié : `produit_id`, `nom`, et `fournisseurs`.

### Table "Inventaire" en 1FN pour l'Exercice 2

Après avoir mis la table "Inventaire" en 1FN dans l'exercice 1, elle ressemble à ceci :

**Inventaire (1FN)**
```
produit_id | nom       | fournisseur
-----------|-----------|------------
1          | Clavier   | ABC Ltd
1          | Clavier   | XYZ Inc
1          | Souris    | ABC Ltd
1          | Souris    | XYZ Inc
2          | Moniteur  | ABC Ltd
```
---
### Exercice 2 (2FN)

Pour transformer cette table en Deuxième Forme Normale (2FN), rappelons que la 2FN nécessite que la table soit en 1FN et que tous les attributs non-clés soient pleinement dépendants de la clé primaire.

#### Problème à Résoudre pour la 2FN
Dans notre table "Inventaire", la clé primaire est `produit_id`. Cependant, nous avons une contradiction avec la règle de la 2FN : chaque produit est supposé avoir un seul fournisseur, mais notre table montre plusieurs fournisseurs pour le même `produit_id`. 

#### Correction pour la 2FN
Pour corriger cela, nous devons restructurer la table de manière à ce que chaque `produit_id` soit associé à un seul fournisseur. 

**Inventaire (2FN)**
```
produit_id | nom       | fournisseur
-----------|-----------|------------
1          | Clavier   | ABC Ltd
1          | Souris    | XYZ Inc
2          | Moniteur  | ABC Ltd
```

Dans cette nouvelle structure, chaque `produit_id` est associé à un seul fournisseur, conformément à la condition de l'exercice. Cela signifie que nous avons supposé, pour les besoins de cet exercice, que chaque produit (clavier, souris, moniteur) est fourni par un seul fournisseur, même si un fournisseur peut fournir plusieurs produits différents.

### Justification des Changements
- **Conformité à la 2FN** : Chaque attribut non-clé (ici, `nom` et `fournisseur`) est maintenant pleinement dépendant de la clé primaire (`produit_id`).
- **Élimination des Redondances** : Cette structure élimine les redondances, où le même produit était listé plusieurs fois avec différents fournisseurs.
- **Intégrité des Données** : Les modifications garantissent une meilleure intégrité des données en respectant la règle qu'un produit ne peut avoir qu'un seul fournisseur.

Ces ajustements garantissent que la table "Inventaire" respecte la Deuxième Forme Normale.



---

## Exercice n°3 - 3FN
Procédons à la résolution de l'exercice 3.

### Table Originale pour l'Exercice 3

Supposons que nous partions de la table suivante pour l'exercice 3 :

**Employés**
```
employe_id | nom      | departement_id | nom_departement   | responsable_departement
-----------|----------|----------------|-------------------|------------------------
1          | Alice    | D1             | Ressources Humaines | Thomas
2          | Bob      | D2             | IT                 | Sarah
3          | Charlie  | D1             | Ressources Humaines | Thomas
```

### Identification des Dépendances Transitives

Dans cette table, les champs `nom_departement` et `responsable_departement` dépendent de `departement_id` et non directement de `employe_id`. Cela crée une dépendance transitive.

### Restructuration pour la 3FN

1. **Créer une Table Séparée pour les Départements** : 
   Nous créons une nouvelle table `Departements` pour éliminer la dépendance transitive.

   **Departements**
   ```
   departement_id | nom_departement   | responsable_departement
   ---------------|-------------------|------------------------
   D1             | Ressources Humaines | Thomas
   D2             | IT                 | Sarah
   ```

2. **Mise à Jour de la Table "Employés"** : 
   Nous retirons les colonnes `nom_departement` et `responsable_departement` de la table "Employés".

   **Employés**
   ```
   employe_id | nom      | departement_id
   -----------|----------|----------------
   1          | Alice    | D1
   2          | Bob      | D2
   3          | Charlie  | D1
   ```

### Justification des Changements

- **Élimination des Redondances** : En déplaçant `nom_departement` et `responsable_departement` dans leur propre table, nous évitons de répéter ces informations pour chaque employé appartenant au même département.
- **Élimination des Dépendances Transitives** : Les informations sur les départements ne dépendent plus de manière transitive de `employe_id`. Chaque table a maintenant des informations qui dépendent uniquement de sa clé primaire.
- **Intégrité des Données** : Ces modifications garantissent une meilleure intégrité des données. Si les informations d'un département doivent être mises à jour, cela se fait en un seul endroit.

Ces ajustements assurent que les tables "Employés" et "Departements" respectent la Troisième Forme Normale.