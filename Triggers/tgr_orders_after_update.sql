/* Definition for the `tgr_bills_after_update` trigger : */

DROP TRIGGER IF EXISTS `personalfinance`.`tgr_orders_after_update`;

DELIMITER $$
USE `personalfinance`$$
CREATE DEFINER = `root`@`localhost` TRIGGER `personalfinance`.`tgr_orders_after_update` 
AFTER UPDATE ON `orders` 
  FOR EACH ROW 
BEGIN
	IF NEW.statusid = 4 THEN
		UPDATE orderdetails SET
        statusid = 4
        WHERE ordersid = OLD.id;
	END IF;

    INSERT INTO `logs` (`dateprocess`, `type`, `code`, `message`)
    VALUES (NOW(), 'update_orders', 1,     
	CONCAT(
	  'Se ha actualizado un registro en la tabla orders. Id: ',
	  NEW.id,
       ' - Estado anterior: ',
	  OLD.statusid,
	  ' - Estado nuevo: ',
	  NEW.statusid
	));
END$$
DELIMITER ;