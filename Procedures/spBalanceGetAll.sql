/* Definition for the `spBalanceGetAll` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spBalanceGetAll`(
        IN `pYear` INTEGER
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
    WHERE `year` = pYear;

END$$

DELIMITER ;

