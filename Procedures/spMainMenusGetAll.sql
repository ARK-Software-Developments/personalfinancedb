/* Definition for the `spMainMenusGetAll` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spMainMenusGetAll`()
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
	FROM `mainmenus`; 
END$$

DELIMITER ;

