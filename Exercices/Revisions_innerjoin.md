**Table Client**
| id | nom      | prenom    | acteurPrefere_Id |
|----|----------|-----------|-----------------|
| 1  | Todorut  | Carmen    | 1               |
| 2  |          | Thomas    | 1               |
| 3  |          | Christian | 3               |
| 4  |          | Anthony   | 4               |
| 5  |          | Nabil     | 5               |

**Table Acteur**
| id | nom        | prenom    | date_naissance |
|----|------------|-----------|---------------------------|
| 1  | Cruise     | Tom       | 03/07/1962                |
| 2  | Gadot      | Gal       | 30/04/1985                |
| 3  | Tapping    | Amanda    | 28/08/1965                |
| 4  | Di Caprio  | Leonardo  | 11/11/1974                |
| 5  | Stallone   | Sylvester | 06/07/1946                |


**Table Film**
| id | nom                  | annee |
|----|----------------------|-------------------------|
| 1  | Mission Impossible 1 | 1996                    |
| 2  | Stargate             | 1994                    |
| 3  | Titanic              | 1997                    |
| 4  | Rocky                | 1976                    |
| 5  | Wonder Woman         | 2017                    |


**Table Seance**
| id | film_id | date_seance | heure_seance |
|----|---------|-------------|-------------|
| 1  | 1       | 01/01/24    | 20:00       |
| 2  | 1       | 01/01/24    | 22:00       |
| 3  | 2       | 01/01/24    | 17:00       |
| 4  | 3       | 01/01/24    | 14h30       |
| 5  | 4       | 01/01/24    | 20:00       |

**Table Reservation**
| id | client_id | seance_id |
|----|-----------|-----------|
| 1  | 1         | 1         |
| 2  | 1         | 2         |
| 3  | 2         | 1         |
| 4  | 3         | 3         |
| 5  | 4         | 4         |
| 6  | 5         | 5         |
| 7  | 5         | 1         |




1. Sans faire du SQL juste en regardant les tables.
2. Donnez la liste des clients (nom et prénom) avec leur acteur préféré: nom et prénom. Comment avez-vous fait ? Donnez en détails votre démarche.
3. Donnez le nom des films des différentes séances ainsi que l'année de production du film. Comment avez-vous fait ? Donnez en détails votre démarche.
