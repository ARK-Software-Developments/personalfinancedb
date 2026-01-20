/* Definition for the `spServicesGetAll` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spServicesGetAll`()
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
	FROM `services`;
END$$

DELIMITER ;

