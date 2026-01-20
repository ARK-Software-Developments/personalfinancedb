/* Definition for the `spCategoriesUpdate` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spCategoriesUpdate`(
        IN `pId` INTEGER,
        IN `pCategoria` VARCHAR(50)
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	UPDATE `categories`
	SET `category` = pCategoria
	WHERE `id` = pId;
END$$

DELIMITER ;

