# Normalisation des relations
C'est un outil qui permet de mesurer la qualité d'une relation et donne son degré de normalisation.

Pour les premières formes normales, avec l'habitude, vous le ferez machinalement.

Mais la normalisation des attributs de vos tables est capitale pour avoir une base de données cohérente et efficace.

## La première forme normale (1FN)
Une relation est en première forme normale si et seulement si elle possède une clef et que chaque valeur d'attribut est atomique.
Dans ce cas, CHAQUE attribut doit être atomique: ne peut être subdivisé.

C'est à dire que:
- chaque attribut ne peut avoir plusieurs valeurs.
  <ins>Par exemple</ins>: mettre deux numéros de téléphones dans un mêmes attribut séparés par une virgule. Tel="0479/59.14.14,0477/78.14.28" 
- On pourrait créer un nouvel attribut Tel2. Si maintenant, on arrive à une situation où il a beaucoup de numéros (par ex 10) de téléphones on créera une table dédiée aux numéros de téléphones.

## La deuxième forme normale (2FN)


http://aidedcg.fr/normalisation-relations-1fn-2fn-3fn/