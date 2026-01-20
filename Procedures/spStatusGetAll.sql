/* Definition for the `spStatusGetAll` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spStatusGetAll`()
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	SELECT `id`,
    `name`,
    `entityname`,
    `order`
	FROM `status`;
END$$

DELIMITER ;

