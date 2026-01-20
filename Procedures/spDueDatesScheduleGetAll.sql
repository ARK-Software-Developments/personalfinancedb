/* Definition for the `spDueDatesScheduleGetAll` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spDueDatesScheduleGetAll`()
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	SELECT `id`,
		`scheduledateexpiration`,
		`typeofexpenseid`,
		`active`
	FROM `duedatesschedule`
    WHERE `active` = 1;
END$$

DELIMITER ;

