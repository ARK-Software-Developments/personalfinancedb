/* Definition for the `spCreditCardSpendingtGetAll` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spCreditCardSpendingtGetAll`(
        IN `pYear` INTEGER
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	SELECT `ccp`.`id`,
		`ccp`.`cardsid`,
		`c`.`cardname`,
		`ccp`.`purchasingentity`,
		`ccp`.`details`,
		`ccp`.`numberinstallments`,
		`ccp`.`january`,
		`ccp`.`february`,
		`ccp`.`march`,
		`ccp`.`april`,
		`ccp`.`may`,
		`ccp`.`june`,
		`ccp`.`july`,
		`ccp`.`august`,
		`ccp`.`september`,
		`ccp`.`october`,
		`ccp`.`november`,
		`ccp`.`december`,
		`ccp`.`year`,
		`ccp`.`verified`,
		`ccp`.`paid`,
        (SELECT 
            COUNT(*)
        FROM
            `transactions` AS `t`
        WHERE
            `t`.`creditcardspendingid` = `ccp`.`id`) AS `transaccionesasociada`
	FROM `creditcardspending` AS ccp
	LEFT JOIN `cards` AS c ON ccp.cardsid = c.id
    WHERE `ccp`.`year` = pYear
    ORDER BY `ccp`.`id` DESC;
END$$

DELIMITER ;

