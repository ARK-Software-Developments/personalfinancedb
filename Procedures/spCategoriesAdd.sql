/* Definition for the `spCategoriesAdd` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spCategoriesAdd`(
        IN `pCategoria` VARCHAR(50)
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	INSERT INTO `categories` (`category`)
	VALUES (pCategoria);

END$$

DELIMITER ;

