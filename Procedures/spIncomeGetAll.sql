/* Definition for the `spIncomeGetAll` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spIncomeGetAll`(
        IN `pYear` INTEGER
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	SELECT `i`.`id`,
		`i`.`incomedetailsid`,
        `d`.`code`,
        `d`.`detail`,
		`i`.`january`,
		`i`.`february`,
		`i`.`march`,
		`i`.`april`,
		`i`.`may`,
		`i`.`june`,
		`i`.`july`,
		`i`.`august`,
		`i`.`september`,
		`i`.`october`,
		`i`.`november`,
		`i`.`december`,
		`i`.`year`
	FROM `income` i
    INNER JOIN `incomedetails` AS d ON `i`.`incomedetailsid` = `d`.`id`
    WHERE `i`.`year` = pYear;
END$$

DELIMITER ;

