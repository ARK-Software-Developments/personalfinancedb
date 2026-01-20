/* Definition for the `spEntitiesAdd` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spEntitiesAdd`(
        IN `pEntidad` VARCHAR(100),
        IN `pTipo` VARCHAR(45)
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	INSERT INTO `entities` (`entity`, `entitytype`)
		VALUES (pEntidad, pTipo);

END$$

DELIMITER ;

