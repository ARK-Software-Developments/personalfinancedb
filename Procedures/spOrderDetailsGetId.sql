/* Definition for the `spOrderDetailsGetId` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spOrderDetailsGetId`(
        IN `pId` INTEGER
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	SELECT `od`.`id`,
    `od`.`ordersid`,
    `od`.`brand`,
    `od`.`productdetails`,
    `od`.`description`,
    `od`.`productcode`,
    `od`.`quantity`,
    `od`.`unitprice`,
    `od`.`subtotal`,
    `od`.`to`,
    `od`.`statusid`,
    `s`.`name`,
    `s`.`entityname`,
    `s`.`order`
	FROM `orderdetails` AS od
    INNER JOIN `status` s ON `od`.`statusid` = s.`id`
    WHERE `od`.`id` = pId;
END$$

DELIMITER ;

