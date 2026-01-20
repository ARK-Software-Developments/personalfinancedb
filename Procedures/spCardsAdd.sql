/* Definition for the `spCardsAdd` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spCardsAdd`(
        IN `pCardName` VARCHAR(50),
        IN `pClosingDate` DATETIME,
        IN `pExpirationDate` DATETIME,
        IN `pEntityId` INTEGER,
        IN `pActive` INTEGER
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
		INSERT INTO `cards` (`cardname`, `closingdate`, `expirationdate`, `entityid`, `active`)
		VALUES (pCardName, pClosingDate, pExpirationDate, pEntityId, pActive);

END$$

DELIMITER ;

