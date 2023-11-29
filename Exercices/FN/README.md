<h1>Exercices sur Formes Normales</h1>

![](../Theo/media/image1.png)
<div style="text-align: right">
<i>Johnny Piette</i>
</div>

****
<h1>Table des matières</h1>


<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->

<!-- code_chunk_output -->

- [Exercice 1 (1FN)](#exercice-1-1fn)
- [Exercice 2 (2FN)](#exercice-2-2fn)
- [Exercice 3 (3FN)](#exercice-3-3fn)

<!-- /code_chunk_output -->


## Exercice 1 (1FN) 
Considérez la table **Inventaire** ci-dessous. Elle contient des données sur les produits et leurs fournisseurs. Mettez cette table en **Première Forme Normale** (`1FN`).

Inventaire
----------

produit_id | nom         | fournisseurs
---------- | ------------------- | ------------
1          | Claviers, Souris    | ABC Ltd, XYZ Inc
2          | Moniteurs           | ABC Ltd

## Exercice 2 (2FN) 
Après avoir mis la table Inventaire en `1FN`, transformez-la en Deuxième Forme Normale (2FN). Considérez que chaque produit a un seul fournisseur.

## Exercice 3 (3FN)
Pour cet exercice, nous utiliserons une table contenant des informations sur les employés et leurs départements.

Employés (2FN)
--

employe_id | nom | departement_id | nom_departement   | responsable_departement
-----------|-------------|----------------|-------------------|------------------------
E1         | Alice       | D1             | Ressources Humaines | Thomas
E2         | Bob         | D2             | IT                 | Sarah
E3         | Charlie     | D1             | Ressources Humaines | Thomas

Dans cette structure, il existe une dépendance transitive : le "nom_departement" et le "responsable_departement" dépendent de "departement_id", et non directement de "employe_id".

Votre tâche est de restructurer ces tables pour qu'elles respectent la Troisième Forme Normale. Voici les étapes :

1. **Identifier les Dépendances Transitives** :
   - La dépendance transitive est ici entre "ID_Département" et les attributs "Nom_Département" et "Responsable_Département".

2. **Restructurer les Tables** :
   - Créez une table séparée pour les départements pour éliminer cette dépendance transitive.

3. **Présenter la Nouvelle Structure** :
   - Après la restructuration, montrez comment les tables sont organisées.

4. **Justifier les Changements** :
   - Expliquez pourquoi cette nouvelle structure respecte les critères de la 3FN.

Envisagez de scinder la table "Employés" pour créer une nouvelle table "Départements", réduisant ainsi les redondances et éliminant les dépendances transitives. Pensez à la meilleure façon d'organiser ces informations tout en respectant les principes de la 3FN.

---
&copy; 2023 [Johnny Piette](https://github.com/ZamBoyle).  
[![Creative Commons Attribution 4.0 International License](https://i.creativecommons.org/l/by/4.0/88x31.png)](https://creativecommons.org/licenses/by/4.0/)  
Ce travail est licencié sous [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/).   
_Vous pouvez copier, modifier, distribuer et représenter ce travail, même à des fins commerciales, à condition de donner le crédit approprié, fournir un lien vers la licence, et indiquer si des modifications ont été effectuées._