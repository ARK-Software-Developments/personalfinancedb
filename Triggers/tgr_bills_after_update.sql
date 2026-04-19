/* Definition for the `tgr_bills_after_update` trigger : */

DROP TRIGGER IF EXISTS `personalfinance`.`tgr_bills_after_update`;

DELIMITER $$
USE `personalfinance`$$
CREATE DEFINER = 'root'@'localhost' TRIGGER `personalfinance`.`tgr_bills_after_update` 
AFTER UPDATE ON `bills`
  FOR EACH ROW
BEGIN
    INSERT INTO `logs` (`dateprocess`, `type`, `code`, `message`)
    VALUES (NOW(), 'update_bills', 1, 'Se ha actualizado un registro en la tabla bills');
END$$
DELIMITER ;