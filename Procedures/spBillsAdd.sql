/* Definition for the `spBillsAdd` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spBillsAdd`(
        IN `pTypeofexpenseid` INTEGER,
        IN `pSummary` VARCHAR(200),
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
        IN `pWallet` INTEGER,
        IN `pVerified` TINYINT(1),
        IN `pReserved` TINYINT(1),
        IN `pPaid` TINYINT(1),
        IN `pYear` INTEGER,
        IN `pObservations` VARCHAR(255),
        IN `pActive` TINYINT(1)
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	INSERT INTO `bills` 
		(`typeofexpenseid`, `summary`, `january`, `february`, `march`, `april`, `may`, `june`, `july`, `august`, `september`, `october`, `november`, `december`, `wallet`, `verified`, `reserved`, `paid`, `year`, `observations`, `active`)
	VALUES
		(pTypeofexpenseid, UPPER(pSummary), pJanuary, pFebruary, pMarch, pApril, pMay, pJune, pJuly, pAugust, pSeptember, pOctober, pNovember, pDecember, pWallet, pVerified, pReserved, pPaid, pYear, UPPER(pObservations), pActive);
END$$

DELIMITER ;

