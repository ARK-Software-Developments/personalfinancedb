/* Definition for the `spOrdersUpdateTotalAmount` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spOrdersUpdateTotalAmount`(
        IN `pOrderId` INTEGER
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	UPDATE `orders`
	SET
	`totalamount` = (SELECT SUM(`subtotal`)
		FROM `orderdetails`
		WHERE `ordersid` = pOrderId )
	WHERE `id` = pOrderId;
END$$

DELIMITER ;

