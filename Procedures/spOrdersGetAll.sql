/* Definition for the `spOrdersGetAll` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spOrdersGetAll`()
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
    INNER JOIN `status` s ON o.`statusid` = s.`id`;
END$$

DELIMITER ;

