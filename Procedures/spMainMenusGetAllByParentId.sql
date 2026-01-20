/* Definition for the `spMainMenusGetAllByParentId` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spMainMenusGetAllByParentId`(
        IN `pParentId` INTEGER
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
    WHERE `parentid` = pParentId; 
END$$

DELIMITER ;

