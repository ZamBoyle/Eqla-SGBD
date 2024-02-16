DROP DATABASE IF EXISTS transactions
CREATE DATABASE transaction
-- Création de la table `stock`
CREATE TABLE IF NOT EXISTS `produit` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `nom` VARCHAR(255) NOT NULL,
    `quantite` INT NOT NULL CHECK (quantite >= 0), -- Assure que la quantité ne soit jamais négative
    `prix` DECIMAL(10,2) NOT NULL
) ENGINE=InnoDB;

-- Création de la table prix_produit pour l'historique des prix
CREATE TABLE prix_produit (
    id INT AUTO_INCREMENT PRIMARY KEY,
    produit_id INT NOT NULL,
    prix DECIMAL(10, 2) NOT NULL,
    date_debut DATETIME NOT NULL,
    date_fin DATETIME,
    FOREIGN KEY (produit_id) REFERENCES produit(id)
);

-- Création de la table `ventes`
CREATE TABLE IF NOT EXISTS `ventes` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `produit_id` INT,
    `quantite` INT NOT NULL,
    `date` DATETIME NOT NULL,
    CONSTRAINT `fk_produit_id` FOREIGN KEY (`produit_id`) REFERENCES `produit` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB;

-- Insertions initiales dans la table `stock`
INSERT INTO `stock` (`nom`, `quantite`, `prix`) VALUES ('Produit A', 10,);
INSERT INTO `stock` (`nom`, `quantite`, `prix`) VALUES ('Produit B', 20);
