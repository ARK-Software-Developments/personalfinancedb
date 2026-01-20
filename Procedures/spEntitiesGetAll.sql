/* Definition for the `spEntitiesGetAll` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spEntitiesGetAll`()
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	SELECT `entities`.`id`,
    `entity`,
    `entitytype`
	FROM `entities`; 
END$$

DELIMITER ;

