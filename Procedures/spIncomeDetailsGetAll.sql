/* Definition for the `spIncomeDetailsGetAll` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spIncomeDetailsGetAll`()
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	SELECT `id`,
		`code`,
		`detail`
	FROM `incomedetails`;
END$$

DELIMITER ;

