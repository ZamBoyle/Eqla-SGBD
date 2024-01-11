**Table Client**
| Id | Nom      | Prénom    | ActeurPrefere_Id |
|----|----------|-----------|-----------------|
| 1  | Todorut  | Carmen    | 1               |
| 2  |          | Thomas    | 1               |
| 3  |          | Christian | 3               |
| 4  |          | Anthony   | 4               |
| 5  |          | Nabil     | 5               |

**Table Acteur**
| Id | Nom        | Prénom    | Date_Naissance |
|----|------------|-----------|----------------|
| 1  | Cruise     | Tom       | 01/01/1974     |
| 2  | Gadot      | Gal       | 10/05/1986     |
| 3  | Tapping    | Amanda    | 07/07/1960     |
| 4  | Di Caprio  | Leonardo  | 14/02/1970     |
| 5  | Stallone   | Sylvester | 03/03/1955     |

**Table Film**
| Id | Nom                  | Annee |
|----|----------------------|-------|
| 1  | Mission Impossible 1 | 2000  |
| 2  | Stargate             | 2005  |
| 3  | Titanic              | 1999  |
| 4  | Rocky                | 1990  |
| 5  | Wonder Woman         | 2019  |

**Table Seance**
| Id | Film_Id | Date_Seance |
|----|---------|-------------|
| 1  | 1       | 01/01/24    |
| 2  | 1       | 01/01/24    |
| 3  | 2       | 01/01/24    |
| 4  | 3       | 01/01/24    |
| 5  | 4       | 01/01/24    |

1. Sans faire du SQL juste en regardant les tables.
2. Donnez la liste des clients (nom et prénom) avec leur acteur préféré: nom et prénom. Comment avez-vous fait ? Donnez en détails votre démarche.
3. Donnez le nom des films des différentes séances ainsi que l'année de production du film. Comment avez-vous fait ? Donnez en détails votre démarche.