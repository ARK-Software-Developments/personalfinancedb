/* Definition for the `spEntitiesGetId` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spEntitiesGetId`(
        IN `pid` INTEGER
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	SELECT `id`,
		`entity`,
		`entitytype`
	FROM `entities`
    WHERE `id` = pid;

END$$

DELIMITER ;

