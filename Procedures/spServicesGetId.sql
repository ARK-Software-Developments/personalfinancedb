/* Definition for the `spServicesGetId` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spServicesGetId`(
        IN `pId` INTEGER
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	SELECT `id`,
		`servicename`,
		`unit`,
		`amount`,
		`validity`
	FROM `services`
    WHERE `id` = pId;
END$$

DELIMITER ;

