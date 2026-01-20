/* Definition for the `spIncomeDetailsAdd` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spIncomeDetailsAdd`(
        IN `pCode` INTEGER,
        IN `pDetail` VARCHAR(150)
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	INSERT INTO `incomedetails` (`code`, `detail`)
	VALUES (pCode, pDetail);
END$$

DELIMITER ;

