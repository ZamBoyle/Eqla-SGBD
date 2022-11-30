# Exercices de révisions.
Vu que certains mettent leurs exercices dans des fichiers et que je demande parfois par exercice plusieurs choses, on peut utiliser la commande SELECT pour afficher quelque chose sans l'utilisation de FROM.
Exemple:
```sql
  
USE Pays;
SELECT 'Exercice 1.2';
SELECT * FROM continent \p;

```
Dans l'exemple précédent notez que j'ai mis un \p avant le ; cela permet d'afficher la requête complètre à l'écran avant de l'exécuter. Ce qui est très utile lorsque vous appelez votre exercice via la commande SOURCE;

Ou bien, vous pouvez créer une colonne indiquant la partie de l'exercice.
```sql
  
USE Pays;
SELECT '1.2' AS Exercice , continent.* FROM continent \p;
SELECT '1.3' AS Exercice , Pays.name FROM Pays WHERE code='be'\p;

```

C'est une proposition, pas une obligation. ;-)

## Exercice 1 - DB Pays
1. Afficher la colonne name nommée Nom à l'affichage de la table Pays où les pays ont un nom commençant par 'u';
2. Reprenez la requête précédente et classer par ordre décroissant les noms de pays.
3. Maintenant par ordre croissant.
4. Affichez les pays dont le nom se terminent par %ca';
5. Affichez le nombre de pays de la précédente requête.
6. Affichez les pays qui commencent par 'e' et qui se terminent par 'a' et enfin qui contiennent un 't'. Vous utiliserez 3 LIKE;
7. Même chose mais vous n'utiliserez qu'un seul LIKE.
8. Compter le nombre total de pays.
9. Affichez les pays dont l'Id_Pays est compris entre 20 et 43;
10. Idem mais trouvez une autre méthode pour faire votre condition.
11. Affichez les noms de pays où l'Id_Pays est inférieur à 48 ou supérieur à 125.
12. Affichez les noms de pays où le code pays est compris dans cette liste de valeurs: BE, FR, LU, NL.
13. 

## Exercice 2 - DB BlindCode
