/* Definition for the `spCreditCardSpendingtGetResumen` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spCreditCardSpendingtGetResumen`(
        IN `pYear` INTEGER
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	SELECT 
		`c`.`id`,
		`c`.`cardname`,
		SUM(`ccp`.`january`) AS january,
		SUM(`ccp`.`february`) AS february,
		SUM(`ccp`.`march`) AS march,
		SUM(`ccp`.`april`) AS april,
		SUM(`ccp`.`may`) AS may,
		SUM(`ccp`.`june`) AS june,
		SUM(`ccp`.`july`) AS july,
		SUM(`ccp`.`august`) AS august,
		SUM(`ccp`.`september`) AS september,
		SUM(`ccp`.`october`) AS october,
		SUM(`ccp`.`november`) AS november,
		SUM(`ccp`.`december`) AS december
	FROM
		`creditcardspending` AS ccp
			LEFT JOIN
		`cards` AS c ON ccp.cardsid = c.id
	WHERE
		`ccp`.`year` = pYear
	GROUP BY `c`.`id`, `c`.`cardname`
    ORDER BY `c`.`id` ASC;
END$$

DELIMITER ;

