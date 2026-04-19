/* Definition for the `spCreditCardSpendingtGetResumenByCard` procedure : */

DELIMITER $$
USE `personalfinance`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spCreditCardSpendingtGetResumenByCard`(
	IN pYear INT,
    IN pCardsId INT
)
BEGIN
	SELECT 
		`c`.`purchasingentity`, 
		`ref`.`referencename`, 
		SUM(`c`.`january`) AS january,
		SUM(`c`.`february`) AS february,
		SUM(`c`.`march`) AS march,
		SUM(`c`.`april`) AS april,
		SUM(`c`.`may`) AS may,
		SUM(`c`.`june`) AS june,
		SUM(`c`.`july`) AS july,
		SUM(`c`.`august`) AS august,
		SUM(`c`.`september`) AS september,
		SUM(`c`.`october`) AS october,
		SUM(`c`.`november`) AS november,
		SUM(`c`.`december`) AS december
	FROM `creditcardspending` c
	LEFT JOIN `creditcardspendingref` ref ON `c`.`purchasingentity` = `ref`.`creditcardspendingrefname`
	WHERE
		`c`.`year` = pYear
		AND `c`.`cardsid` = pCardsId
	GROUP BY 
		`c`.`purchasingentity`, `ref`.`referencename`;
END$$

DELIMITER ;

