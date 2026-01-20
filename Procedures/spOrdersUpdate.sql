/* Definition for the `spOrdersUpdate` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spOrdersUpdate`(
        IN `pId` INTEGER,
        IN `pFechaRecibido` DATETIME,
        IN `pFechaPagado` DATETIME,
        IN `pMontoTotal` DECIMAL(10,2),
        IN `pEstado` INTEGER
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	UPDATE `orders`
	SET
	`datereceived` = pFechaRecibido,
    `paymentdate` = pFechaPagado,
	`totalamount` = pMontoTotal,
	`statusid` = pEstado
	WHERE `id` = pId;
END$$

DELIMITER ;

