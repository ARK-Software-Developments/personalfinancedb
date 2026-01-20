/* Definition for the `spPaymentsGetAllResume` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spPaymentsGetAllResume`(
        IN `pYear` INTEGER
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	SELECT 
		`reasonforpayment` AS tipogasto,
		MONTH(`dateofpayment`) AS mes,
		LOWER(MONTHNAME(`dateofpayment`)) AS mesnombre,
		SUM(`amountpaid`) AS total
	FROM
		`payments`
	WHERE
		YEAR(`dateofpayment`) = pYear
	GROUP BY `reasonforpayment` , MONTH(`dateofpayment`) , LOWER(MONTHNAME(`dateofpayment`));
END$$

DELIMITER ;

