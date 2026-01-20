/* Definition for the `spBalanceUpdate` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spBalanceUpdate`(
        IN `pId` INTEGER,
        IN `pConcepto` VARCHAR(45),
        IN `pJanuary` DECIMAL(10,2),
        IN `pFebruary` DECIMAL(10,2),
        IN `pMarch` DECIMAL(10,2),
        IN `pApril` DECIMAL(10,2),
        IN `pMay` DECIMAL(10,2),
        IN `pJune` DECIMAL(10,2),
        IN `pJuly` DECIMAL(10,2),
        IN `pAugust` DECIMAL(10,2),
        IN `pSeptember` DECIMAL(10,2),
        IN `pOctober` DECIMAL(10,2),
        IN `pNovember` DECIMAL(10,2),
        IN `pDecember` DECIMAL(10,2),
        IN `pYear` INTEGER
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
    UPDATE `balance`
		SET
		`concept` = pConcepto,
		`january` = pJanuary,
		`february` = pFebruary,
		`march` = pMarch,
		`april` = pApril,
		`may` = pMay,
		`june` = pJune,
		`july` = pJuly,
		`august` = pAugust,
		`september` = pSeptember,
		`october` = pOctober,
		`november` = pNovember,
		`december` = pDecember,
		`year` = pYear
		WHERE `id` = pId;
END$$

DELIMITER ;

