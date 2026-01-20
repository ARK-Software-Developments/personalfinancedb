/* Definition for the `spIncomeAdd` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spIncomeAdd`(
        IN `pIncomeDetailsId` INTEGER,
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
	INSERT INTO `income`
		(`incomedetailsid`, `january`, `february`, `march`, `april`, `may`, `june`, `july`, `august`, `september`, `october`, `november`, `december`, `year`)
	VALUES 
		(pIncomeDetailsId, pJanuary, pFebruary, pMarch, pApril, pMay, pJune, pJuly, pAugust, pSeptember, pOctober, pNovember, pDecember, pYear);
END$$

DELIMITER ;

