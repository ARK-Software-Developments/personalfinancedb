/* Definition for the `spOrderDetailsGetAll` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spOrderDetailsGetAll`()
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
    INNER JOIN `status` s ON `od`.`statusid` = s.`id`;
END$$

DELIMITER ;

