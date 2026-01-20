/* Definition for the `spTypeOfExpenseGetId` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spTypeOfExpenseGetId`(
        IN `pId` INTEGER
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	SELECT toe.`id`, toe.`type`, toe.`categoriesid`, cat.`category`
	FROM `typeofexpense` AS toe
	INNER JOIN `categories` AS cat ON toe.`categoriesid` = cat.`id`
    WHERE toe.`id` = pId;
END$$

DELIMITER ;

