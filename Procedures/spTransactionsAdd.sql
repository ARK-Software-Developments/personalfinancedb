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
        IN `pCreditCardsPendingId` INTEGER
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	INSERT INTO `transactions` (`transactioncode`, `purchaseorder`, `associatedentity`, `transactiondate`, `summary`, `observations`, `cardsid`, `creditcardspendingid`)
	VALUES (pTransactionCode, pPurchaseOrder, UPPER(pAssociatedEntity), pTransactionDate, UPPER(pSummary), UPPER(pObservations), pCardId, pCreditCardsPendingId);
    
    SELECT LAST_INSERT_ID() AS LastInsertedId;
END$$

DELIMITER ;

