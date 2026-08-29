/* Definition for the `spTransactionsUpdate` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spTransactionsUpdate`(
        IN `pId` INTEGER,
        IN `pTransactionCode` VARCHAR(45),
        IN `pPurchaseOrder` VARCHAR(45),
        IN `pAssociatedEntity` VARCHAR(45),
        IN `pTransactionDate` DATETIME,
        IN `pSummary` VARCHAR(100),
        IN `pObservations` VARCHAR(255),
        IN `pCardId` INTEGER,
        IN `pCreditCardsPendingId` INT,
        IN pAmount DECIMAL(10,2),
        IN pMonth INT
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
    DECLARE vAmount DECIMAL(10,2);
    
    UPDATE `transactions`
	SET
		`transactioncode` = pTransactionCode, 
		`purchaseorder` = pPurchaseOrder,
		`associatedentity` = UPPER(pAssociatedEntity),
		`transactiondate` = pTransactionDate,
		`summary` = UPPER(pSummary),
		`observations` = UPPER(pObservations),
        `cardsid` = pCardId,
        `creditcardspendingid` = pCreditCardsPendingId,
        `amount` = pAmount
	WHERE `id` = pId;
    
    SELECT SUM(IFNULL(`amount`, 0))
    INTO vAmount
    FROM `transactions`
    where `creditcardspendingid` = pCreditCardsPendingId;
    
    UPDATE `creditcardspending` 
	SET 
		`january` = CASE
			WHEN pMonth = 1 THEN vAmount
			ELSE `january`
		END,
		`february` = CASE
			WHEN pMonth = 2 THEN vAmount
			ELSE `february`
		END,
		`march` = CASE
			WHEN pMonth = 3 THEN vAmount
			ELSE `march`
		END,
		`april` = CASE
			WHEN pMonth = 4 THEN vAmount
			ELSE `april`
		END,
		`may` = CASE
			WHEN pMonth = 5 THEN vAmount
			ELSE `may`
		END,
		`june` = CASE
			WHEN pMonth = 6 THEN vAmount
			ELSE `june`
		END,
		`july` = CASE
			WHEN pMonth = 7 THEN vAmount
			ELSE `july`
		END,
		`august` = CASE
			WHEN pMonth = 8 THEN vAmount
			ELSE `august`
		END,
		`september` = CASE
			WHEN pMonth = 9 THEN vAmount
			ELSE `september`
		END,
		`october` = CASE
			WHEN pMonth = 10 THEN vAmount
			ELSE `october`
		END,
		`november` = CASE
			WHEN pMonth = 11 THEN vAmount
			ELSE `november`
		END,
		`december` = CASE
			WHEN pMonth = 12 THEN vAmount
			ELSE `december`
		END
	WHERE
        `creditcardspendingid` = pCreditCardsPendingId;
END$$

DELIMITER ;

