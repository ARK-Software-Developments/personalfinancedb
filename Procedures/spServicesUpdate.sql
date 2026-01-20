/* Definition for the `spServicesUpdate` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spServicesUpdate`(
        IN `pId` INTEGER,
        IN `pNombre` VARCHAR(100),
        IN `pMontoUnitario` INTEGER,
        IN `pMonto` DECIMAL(10,2),
        IN `pValidoDesde` DATETIME
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	UPDATE `services`
		SET
		`servicename` = pNombre,
		`unit` = pMontoUnitario,
		`amount` = pMonto,
		`validity` = pValidoDesde
		WHERE `id` = pId;

END$$

DELIMITER ;

