/* Definition for the `spBillsGetProcess` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spBillsGetProcess`(
        IN `pYear` INTEGER,
        IN `pCardId` INTEGER
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	SELECT 
		`b`.`id`,
		`b`.`january`,
		`b`.`february`,
		`b`.`march`,
		`b`.`april`,
		`b`.`may`,
		`b`.`june`,
		`b`.`july`,
		`b`.`august`,
		`b`.`september`,
		`b`.`october`,
		`b`.`november`,
		`b`.`december`,
		`c`.`cardname`
	FROM
		`bills` AS b
			INNER JOIN
		`typeofexpense` AS `t` ON `b`.`typeofexpenseid` = `t`.`id`
			INNER JOIN
		`cards` `c` ON `t`.`referentid` = `c`.`id`
	WHERE
		`b`.`active` = 1 AND `b`.`year` = pYear
			AND `c`.`id` = pCardId;	
END$$

DELIMITER ;

