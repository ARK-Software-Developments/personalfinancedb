/* Definition for the `spBillsGetId` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spBillsGetId`(
        IN `pId` INTEGER
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	SELECT `b`.`id`,
		`b`.`typeofexpenseid`,
        `toe`.`type`,
        `toe`.`categoriesid`,
        `c`.`category`,
		`b`.`summary`,
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
		`b`.`wallet`,
        `e`.`entity`,
        `e`.`entitytype`,
		`b`.`verified`,
		`b`.`reserved`,
		`b`.`paid`,
		`b`.`year`,
		`b`.`observations`,
		`b`.`active`
	FROM `bills` AS b    
    INNER JOIN `typeofexpense` AS toe ON `b`.`typeofexpenseid` = `toe`.`id`
    INNER JOIN `categories` AS c ON  `toe`.`categoriesid` =  `c`.`id`
    INNER JOIN `entities` AS e ON  `b`.`wallet` =  `e`.`id`
    WHERE `b`.`id` = pId;
END$$

DELIMITER ;

