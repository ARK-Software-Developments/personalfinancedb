/* Definition for the `spIncomeDetailsGetId` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spIncomeDetailsGetId`(
        IN `pId` INTEGER
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	SELECT `id`,
		`code`,
		`detail`
	FROM `incomedetails`
    WHERE `id` = pId;
END$$

DELIMITER ;

