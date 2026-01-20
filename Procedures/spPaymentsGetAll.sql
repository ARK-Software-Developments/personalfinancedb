/* Definition for the `spPaymentsGetAll` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spPaymentsGetAll`()
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	SELECT `p`.`id`,
		`p`.`registrationdate`,
		`p`.`dateofpayment`,
		`p`.`registrationcode`,
		`p`.`paymentresourceid`,
		`e`.`entity`,
        `e`.`entitytype`,
		`p`.`paymenttype`,
		`p`.`budgetedamount`,
		`p`.`amountpaid`,
		`p`.`reasonforpayment`,
		`t`.`type`
	FROM `payments` AS `p`
	INNER JOIN `entities` AS `e` ON `p`.`paymentresourceid` = `e`.`id`
	INNER JOIN `typeofexpense` AS `t` ON `p`.`reasonforpayment` = `t`.`id`
	ORDER BY `p`.`id` DESC;
END$$

DELIMITER ;

