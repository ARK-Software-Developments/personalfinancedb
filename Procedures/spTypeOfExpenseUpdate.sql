/* Definition for the `spTypeOfExpenseUpdate` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spTypeOfExpenseUpdate`(
        IN `pId` INTEGER,
        IN `pTipo` VARCHAR(200),
        IN `pCategoriaId` INTEGER
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN 
    UPDATE `typeofexpense`
	SET
		`type` = pTipo,
		`categoriesid` = pCategoriaId
	WHERE `id` = pId;
END$$

DELIMITER ;

