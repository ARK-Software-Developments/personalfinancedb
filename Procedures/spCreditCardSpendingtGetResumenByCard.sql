/* Definition for the `spCreditCardSpendingtGetResumenByCard` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spCreditCardSpendingtGetResumenByCard`(
        IN `pYear` INTEGER,
        IN `pCardsId` INTEGER
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	SELECT 
    `purchasingentity`, 
    SUM(`january`) AS january,
    SUM(`february`) AS february,
    SUM(`march`) AS march,
    SUM(`april`) AS april,
    SUM(`may`) AS may,
    SUM(`june`) AS june,
    SUM(`july`) AS july,
    SUM(`august`) AS august,
    SUM(`september`) AS september,
    SUM(`october`) AS october,
    SUM(`november`) AS november,
    SUM(`december`) AS december
FROM
    `creditcardspending`
WHERE
    `year` = pYear
    AND `cardsid` = pCardsId
GROUP BY 
    `purchasingentity`;
END$$

DELIMITER ;

