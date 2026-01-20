/* Definition for the `spMainMenusGetAllByLevel` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spMainMenusGetAllByLevel`(
        IN `pLevel` INTEGER
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	SELECT `id`,
    `name`,
    `title`,
    `action`,
    `level`,
    `parentid`
	FROM `mainmenus`
    WHERE `level` = pLevel; 
END$$

DELIMITER ;

