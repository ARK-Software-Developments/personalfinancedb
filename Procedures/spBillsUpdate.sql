/* Definition for the `spBillsUpdate` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spBillsUpdate`(
        IN `pId` INTEGER,
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
	UPDATE `bills`
	SET
	`typeofexpenseid` = pTypeofexpenseid,
	`summary` = UPPER(pSummary),
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
	`wallet` = pWallet,
	`verified` = pVerified,
	`reserved` = pReserved,
	`paid` = pPaid,
	`year` = pYear,
	`observations` = UPPER(pObservations),
	`active` = pActive
	WHERE `id` = pId;
END$$

DELIMITER ;

