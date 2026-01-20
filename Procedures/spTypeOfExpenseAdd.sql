/* Definition for the `spTypeOfExpenseAdd` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spTypeOfExpenseAdd`(
        IN `pTipo` VARCHAR(200),
        IN `pCategoriaId` INTEGER
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	INSERT INTO `typeofexpense` (`type`, `categoriesid`)
	VALUES (pTipo,  pCategoriaId);
END$$

DELIMITER ;

