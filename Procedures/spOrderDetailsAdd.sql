/* Definition for the `spOrderDetailsAdd` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spOrderDetailsAdd`(
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
	INSERT INTO `orderdetails` (`ordersid`, `brand`, `productdetails`, `description`, `productcode`, `quantity`, `unitprice`, `subtotal`, `to`, `statusid`)
	VALUES (pOrderId, pBrand, pProductDetails, pDescription, pProductCode, pQuantity, pUnitPrice, pSubTotal, pTo, pStatus);
END$$

DELIMITER ;

