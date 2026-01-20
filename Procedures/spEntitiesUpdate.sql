/* Definition for the `spEntitiesUpdate` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spEntitiesUpdate`(
        IN `pId` INTEGER,
        IN `pEntidad` VARCHAR(100),
        IN `pTipo` VARCHAR(45)
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	UPDATE `entities`
		SET
		`entity` = pEntidad,
		`entitytype` = pTipo
		WHERE `id` = pId;
END$$

DELIMITER ;

