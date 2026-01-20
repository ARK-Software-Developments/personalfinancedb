/* Definition for the `spCreditCardSpendingtAdd` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spCreditCardSpendingtAdd`(
        IN `pCardsId` INTEGER,
        IN `pPurchasingEntity` VARCHAR(100),
        IN `pDetails` VARCHAR(255),
        IN `pNumberInstallments` INTEGER,
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
        IN `pYear` INTEGER,
        IN `pVerified` TINYINT(1),
        IN `pPaid` TINYINT(1)
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	INSERT INTO `creditcardspending`
		(`cardsid`, `purchasingentity`, `details`, `numberinstallments`, `january`, `february`, `march`, `april`, `may`, `june`, `july`, `august`, `september`, `october`, `november`, `december`, `year`, `verified`, `paid`)
	VALUES
		(pCardsId, UCASE(pPurchasingEntity), UCASE(pDetails), pNumberInstallments, pJanuary, pFebruary, pMarch, pApril, pMay, pJune, pJuly, pAugust, pSeptember, pOctober, pNovember, pDecember, pYear, pVerified, pPaid);
        
        SELECT LAST_INSERT_ID() AS LastInsertedId;
        
END$$

DELIMITER ;

