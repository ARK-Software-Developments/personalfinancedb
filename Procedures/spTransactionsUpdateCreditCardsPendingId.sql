/* Definition for the `spTransactionsUpdateCreditCardsPendingId` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spTransactionsUpdateCreditCardsPendingId`(
        IN `pId` INTEGER,
        IN `pCreditCardsPendingId` INTEGER
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
    UPDATE `transactions`
	SET
        `creditcardspendingid` = pCreditCardsPendingId
	WHERE `id` = pId;
END$$

DELIMITER ;

