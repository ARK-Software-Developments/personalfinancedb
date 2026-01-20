/* Definition for the `spIncomeDetailsUpdate` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spIncomeDetailsUpdate`(
        IN `pId` INTEGER,
        IN `pCode` INTEGER,
        IN `pDetail` VARCHAR(150)
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
    UPDATE `incomedetails`
	SET
	`code` = pCode,
	`detail` = pDetail
	WHERE `id` = pId;
END$$

DELIMITER ;

