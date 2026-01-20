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
        IN `pCreditCardsPendingId` INTEGER
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
    UPDATE `transactions`
	SET
		`transactioncode` = pTransactionCode, 
		`purchaseorder` = pPurchaseOrder,
		`associatedentity` = UPPER(pAssociatedEntity),
		`transactiondate` = pTransactionDate,
		`summary` = UPPER(pSummary),
		`observations` = UPPER(pObservations),
        `cardsid` = pCardId,
        `creditcardspendingid` = pCreditCardsPendingId
	WHERE `id` = pId;
END$$

DELIMITER ;

