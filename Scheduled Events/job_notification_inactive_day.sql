/* Definition for the `job_notification_inactive_day` event : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' EVENT `job_notification_inactive_day`
    ON SCHEDULE EVERY 1 DAY STARTS '2026-01-31 23:59:00.000'
    ON COMPLETION NOT PRESERVE
    ENABLE
    COMMENT ''  DO 
UPDATE `notification`
    SET `active` = 0
    WHERE `id` > 0
    AND `active` = 1
    AND DATE(DATE_ADD(`notificationdate`, INTERVAL 2 DAY)) <= CURDATE()$$

DELIMITER ;