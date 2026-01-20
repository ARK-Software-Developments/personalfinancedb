/* Definition for the `after_update_bills` trigger : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' TRIGGER `after_update_bills` AFTER UPDATE ON `bills`
  FOR EACH ROW
BEGIN
    INSERT INTO `logs` (`dateprocess`, `type`, `code`, `message`)
    VALUES (NOW(), 'update_bills', 1, 'Se ha actualizado un registro en la tabla bills');
END$$

DELIMITER ;

