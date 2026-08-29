/* Definition for the `spTransactionsAdd` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spTransactionsAdd`(
        IN `pTransactionCode` VARCHAR(45),
        IN `pPurchaseOrder` VARCHAR(45),
        IN `pAssociatedEntity` VARCHAR(45),
        IN `pTransactionDate` DATETIME,
        IN `pSummary` VARCHAR(100),
        IN `pObservations` VARCHAR(255),
        IN `pCardId` INTEGER,
        IN `pCreditCardsPendingId` INTEGER,
        IN `pAmount` DECIMAL(10,2),
        IN `pMonth` INT
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
    DECLARE vLastInsertId INT;
    DECLARE vAmount DECIMAL(10,2);

	INSERT INTO `transactions` (`transactioncode`, `purchaseorder`, `associatedentity`, `transactiondate`, `summary`, `observations`, `cardsid`, `creditcardspendingid`, `amount`)
	VALUES (pTransactionCode, pPurchaseOrder, UPPER(pAssociatedEntity), pTransactionDate, UPPER(pSummary), UPPER(pObservations), pCardId, pCreditCardsPendingId, pAmount);

    SET vLastInsertId = LAST_INSERT_ID();

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
        `id` = pCreditCardsPendingId;

    SELECT vLastInsertId AS LastInsertedId;
END$$

DELIMITER ;

