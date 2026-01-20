/* Definition for the `spCardsGetId` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spCardsGetId`(
        IN `pId` INTEGER
    )
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
	INNER JOIN `entities` AS e ON c.`entityid` = e.`id`
    WHERE c.`id` = pId ;

END$$

DELIMITER ;

