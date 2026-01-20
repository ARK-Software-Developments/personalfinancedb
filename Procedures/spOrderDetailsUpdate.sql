/* Definition for the `spOrderDetailsUpdate` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spOrderDetailsUpdate`(
        IN `pId` INTEGER,
        IN `pOrderId` INTEGER,
        IN `pBrand` VARCHAR(45),
        IN `pProductDetails` VARCHAR(200),
        IN `pDescription` VARCHAR(200),
        IN `pProductCode` VARCHAR(45),
        IN `pQuantity` INTEGER,
        IN `pUnitPrice` DECIMAL(10,2),
        IN `pSubTotal` DECIMAL(10,2),
        IN `pTo` VARCHAR(45),
        IN `pStatus` INTEGER
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	UPDATE `orderdetails`
	SET
    `ordersid` = pOrderId,
	`brand` = pBrand,
	`productdetails` = pProductDetails,
	`description` = pDescription,
	`productcode` = pProductCode,
	`quantity` = pQuantity,
	`unitprice` = pUnitPrice,
	`subtotal` = pSubTotal,
	`to` = pTo,
	`statusid` = pStatus
	WHERE `id` = pId;
END$$

DELIMITER ;

