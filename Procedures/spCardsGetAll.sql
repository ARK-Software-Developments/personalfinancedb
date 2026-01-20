/* Definition for the `spCardsGetAll` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spCardsGetAll`()
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
		SELECT c.`id`,
		c.`cardname`,
		c.`closingdate`,
		c.`expirationdate`,
		c.`entityid`,
		c.`active`,
		e.`entity`,
        e.`entitytype`
	FROM `cards` AS c
	INNER JOIN `entities` AS e ON c.`entityid` = e.`id`;

END$$

DELIMITER ;

