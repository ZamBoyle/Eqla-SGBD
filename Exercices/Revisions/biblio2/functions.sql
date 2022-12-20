DELETE FROM emprunt;
DROP FUNCTION IF EXISTS date_aleatoire;
DROP FUNCTION IF EXISTS nombre_aleatoire;
DROP FUNCTION IF EXISTS update_date_retour;
DROP FUNCTION IF EXISTS populate_emprunt;
DROP FUNCTION IF EXISTS get_random_nationalite;
DELIMITER $$

CREATE FUNCTION get_random_nationalite()
RETURNS VARCHAR(50)
BEGIN
    DECLARE nationalite VARCHAR(50);
    DECLARE alea FLOAT;
    SET alea = rand();
    SET nationalite = case
        when alea < 0.1 then 'belge'
        when alea < 0.2 then 'français'
        when alea < 0.3 then 'américain'
        when alea < 0.4 then 'allemand'
        when alea < 0.5 then 'russe'
        when alea < 0.6 then 'ukrainien'
        when alea < 0.7 then 'italien'
        when alea < 0.8 then 'espagnol'
        else 'autre'
    END;
    RETURN nationalite;
END$$

CREATE FUNCTION date_aleatoire(date_min DATE, date_max DATE)
RETURNS DATE
BEGIN
    RETURN (SELECT DATE(DATE_ADD(date_min, INTERVAL FLOOR(RAND() * DATEDIFF(date_max, date_min)) DAY)));
END$$

CREATE FUNCTION nombre_aleatoire(nombre_min INT, nombre_max INT)
RETURNS INT
BEGIN
    RETURN (SELECT FLOOR(RAND() * (nombre_max - nombre_min + 1)) + nombre_min);
END$$

CREATE FUNCTION populate_exemplaire(nombre_exemplaires INT)
RETURNS VARCHAR(255)
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE reference VARCHAR(50) ;
    DECLARE rayon VARCHAR(50) ;
    DECLARE date_acquisition DATE ;
    DECLARE etat VARCHAR(50);
    DECLARE est_perdu BOOLEAN;
    DECLARE livre_id INT;
    DECLARE nombre_livres INT;
    
    SELECT COUNT(*) INTO nombre_livres FROM livre;
    SET est_perdu = nombre_aleatoire(0,1);

    IF nombre_livres > 0 THEN
    WHILE i <= nombre_exemplaires DO
        SET reference = CONCAT('REF', i);
        SET rayon = CONCAT('RAYON', i);
        SET date_acquisition = (SELECT date_aleatoire('2022-01-01',CURRENT_DATE()));
        SET etat = case
            when rand() < 0.1 then 'neuf'
            when rand() < 0.2 then 'bon'
            when rand() < 0.3 then 'moyen'
            when rand() < 0.4 then 'mauvais'
            else 'détruit'
        END;
        SET livre_id = (SELECT nombre_aleatoire(1,nombre_livres));
        INSERT INTO exemplaire (reference, rayon, date_acquisition, etat, est_perdu, livre_id) VALUES (reference, rayon, date_acquisition, etat, est_perdu, livre_id);
        SET i = i + 1;
    END WHILE;
    ELSE
        SET nombre_exemplaires = 0;
    END IF;
    RETURN CONCAT(nombre_exemplaires, ' exemplaires ont été ajoutés à la table exemplaire');
END$$

CREATE FUNCTION populate_emprunt(nombre_emprunts INT)
RETURNS VARCHAR(255)
BEGIN
    DECLARE i INT DEFAULT 0;
    DECLARE date_emprunt DATE;
    DECLARE date_retour DATE;
    DECLARE nombre_lecteurs INT;
    DECLARE nombre_exemplaires INT;
    DECLARE lecteur_id INT;
    DECLARE exemplaire_id INT;
    SELECT COUNT(*) INTO nombre_lecteurs FROM lecteur;
    SELECT COUNT(*) INTO nombre_exemplaires FROM exemplaire;

    IF nombre_exemplaires > 0 THEN
    WHILE i < nombre_emprunts DO
        SET date_emprunt = (SELECT date_aleatoire('2022-01-01',CURRENT_DATE()));
        SET date_retour = (SELECT date_aleatoire(date_emprunt, CURRENT_DATE()));
        SET lecteur_id = (SELECT nombre_aleatoire(1,nombre_lecteurs));
        SET exemplaire_id = (SELECT nombre_aleatoire(1,nombre_exemplaires));
        
        INSERT INTO emprunt (date_emprunt, date_retour, lecteur_id, exemplaire_id) VALUES (date_emprunt, date_retour, lecteur_id, exemplaire_id);
        SET i = i + 1;
    END WHILE;
    ELSE
        SET nombre_emprunts = 0;
    END IF;
    RETURN CONCAT(nombre_emprunts, ' emprunts ont été ajoutés à la table emprunt');
END$$
DELIMITER ;