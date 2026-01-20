/* Definition for the `spServicesAdd` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spServicesAdd`(
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
	INSERT INTO `services` (`servicename`, `unit`, `amount`, `validity`)
	VALUES (pNombre, pMontoUnitario, pMonto, pValidoDesde);
END$$

DELIMITER ;

