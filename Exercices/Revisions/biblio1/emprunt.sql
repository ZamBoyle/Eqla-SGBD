--RETURNS VARCHAR(255)
DELETE FROM emprunt;
DROP FUNCTION IF EXISTS date_aleatoire;
DROP FUNCTION IF EXISTS nombre_aleatoire;
DROP FUNCTION IF EXISTS update_date_retour;
DROP FUNCTION IF EXISTS populate_emprunt;
DELIMITER $$
CREATE FUNCTION date_aleatoire(date_min DATE, date_max DATE) RETURNS DATE
BEGIN
    RETURN (SELECT DATE(DATE_ADD(date_min, INTERVAL FLOOR(RAND() * DATEDIFF(date_max, date_min)) DAY)));
END\p$$
CREATE FUNCTION nombre_aleatoire(nombre_min INT, nombre_max INT) RETURNS INT
BEGIN
    RETURN (SELECT FLOOR(RAND() * (nombre_max - nombre_min + 1)) + nombre_min);
END\p$$

CREATE FUNCTION populate_emprunt(nombre_emprunts INT) RETURNS VARCHAR(255)
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE date_emprunt DATE;
    DECLARE date_retour DATE;
    DECLARE nombre_lecteurs INT;
    DECLARE nombre_livres INT;
    DECLARE lecteur_id INT;
    DECLARE livre_id INT;
    SELECT COUNT(*) INTO nombre_lecteurs FROM lecteur;
    SELECT COUNT(*) INTO nombre_livres FROM livre;

    WHILE i <= nombre_emprunts DO
        SET date_emprunt = (SELECT date_aleatoire('2022-01-01',CURRENT_DATE()));
        SET date_retour = (SELECT date_aleatoire(date_emprunt, CURRENT_DATE()));
        SET lecteur_id = (SELECT nombre_aleatoire(1,nombre_lecteurs));
        SET livre_id = (SELECT nombre_aleatoire(1,nombre_livres));
        
        INSERT INTO emprunt (date_emprunt, date_retour, lecteur_id, livre_id) VALUES (date_emprunt, date_retour, lecteur_id, livre_id);
        SET i = i + 1;
    END WHILE;
    RETURN CONCAT(nombre_emprunts, ' emprunts ont été ajoutés à la table emprunt');
END$$
DELIMITER ;

SELECT populate_emprunt(100) as Result;--nombre_emprunts;