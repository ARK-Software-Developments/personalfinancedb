/* Definition for the `job_cards_closingdate_update` event : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' EVENT `job_cards_closingdate_update`
  ON SCHEDULE EVERY 1 MONTH STARTS '2026-01-31 23:59:00'
  ON COMPLETION NOT PRESERVE
  ENABLE
  COMMENT ''  DO
UPDATE `cards`
  SET `closingdate` = DATE_ADD(`closingdate`, INTERVAL 1 MONTH)
  WHERE `id` > 0$$

DELIMITER ;

