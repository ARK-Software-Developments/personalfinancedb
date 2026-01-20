/* Definition for the `spTransactionsGetAll` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spTransactionsGetAll`()
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	SELECT 
		`t`.`id`,
		`t`.`transactioncode`,
		`t`.`purchaseorder`,
		`t`.`associatedentity`,
		`t`.`transactiondate`,
		`t`.`summary`,
		`t`.`observations`,
		`t`.`cardsid`,
		`c`.`cardname`,
		`c`.`closingdate`,
		`c`.`expirationdate`,
		`c`.`active`,
		`c`.`entityid`,
		`e`.`entity`,
		`e`.`entitytype`,
		`t`.`creditcardspendingid`
	FROM
		`transactions` AS `t`
			INNER JOIN
		`cards` AS `c` ON `t`.`cardsid` = `c`.`id`
			INNER JOIN
		`entities` AS `e` ON `c`.`entityid` = `e`.`id`
			LEFT JOIN
		`creditcardspending` AS `cc` ON `t`.`creditcardspendingid` = `cc`.`id`
	ORDER BY `t`.`id` DESC;
END$$

DELIMITER ;

