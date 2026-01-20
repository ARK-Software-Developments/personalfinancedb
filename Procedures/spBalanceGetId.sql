/* Definition for the `spBalanceGetId` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spBalanceGetId`(
        IN `pId` INTEGER
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	SELECT `id`,
		`concept`,
		`january`,
		`february`,
		`march`,
		`april`,
		`may`,
		`june`,
		`july`,
		`august`,
		`september`,
		`october`,
		`november`,
		`december`,
		`year`
	FROM `balance`
    WHERE `id` = pId;

END$$

DELIMITER ;

