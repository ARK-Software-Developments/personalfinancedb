/* Definition for the `spNotificationsGetAll` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spNotificationsGetAll`()
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	SELECT `id`,
    `notificationdate`,
    `title`,
    `type`,
    `messaje`,
   `to`,
    `app`,
    `level`,
    `img`
	FROM `notification`
    WHERE `active` = 1
    ORDER BY `notificationdate` ASC;
END$$

DELIMITER ;

