/* Definition for the `spBillsProcessAD` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spBillsProcessAD`(
       in pId int,
	    in pActive int
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	UPDATE `bills`
	SET `active` = pActive
    WHERE `id`  = pId;
END$$

DELIMITER ;

