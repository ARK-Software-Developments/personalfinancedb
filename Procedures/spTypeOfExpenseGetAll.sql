/* Definition for the `spTypeOfExpenseGetAll` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spTypeOfExpenseGetAll`()
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	SELECT toe.`id`, toe.`type`, toe.`categoriesid`, cat.`category`
	FROM `typeofexpense` AS toe
	INNER JOIN `categories` AS cat ON toe.`categoriesid` = cat.`id`;
END$$

DELIMITER ;

