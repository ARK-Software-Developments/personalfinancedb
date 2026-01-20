/* Definition for the `spOrdersGetId` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spOrdersGetId`(
        IN `pId` INTEGER
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	SELECT `o`.`id`,
    `o`.`number`,
    `o`.`orderdate`,
    `o`.`datereceived`,
    `o`.`paymentdate`,
    `o`.`totalamount`,
    `o`.`resourcetype`,
    `o`.`statusid`,
    `s`.`name`,
    `s`.`entityname`,
    `s`.`order`
	FROM `orders` AS o
    INNER JOIN `status` s ON o.`statusid` = s.`id`
    WHERE `o`.`id` = pId;
END$$

DELIMITER ;

