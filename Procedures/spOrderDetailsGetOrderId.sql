/* Definition for the `spOrderDetailsGetOrderId` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spOrderDetailsGetOrderId`(
        IN `pOrderId` INTEGER
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
    WHERE `ordersid` = pOrderId;
END$$

DELIMITER ;

