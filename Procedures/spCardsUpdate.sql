/* Definition for the `spCardsUpdate` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spCardsUpdate`(
        IN `pId` INTEGER,
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
	UPDATE `cards`
	SET
	`cardname` = pCardName,
	`closingdate` = pClosingDate,
	`expirationdate` = pExpirationDate,
	`entityid` = pEntityId,
	`active` = pActive
	WHERE `id` = pId;

END$$

DELIMITER ;

