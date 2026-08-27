/* Definition for the `spProcesoLoansAssignedDetails` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spProcesoLoansAssignedDetails`(
        IN inLoansAssignedId INT,
    IN inExpirationDate VARCHAR(45)
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	UPDATE `loansassigneddetails` lad
	JOIN (
		SELECT 
			id,
			ROW_NUMBER() OVER (ORDER BY `numberinstallment`) - 1 AS rn
		FROM `loansassigneddetails`
		WHERE `id` > 0
		  AND `loansassignedid` = inLoansAssignedId
		  AND `numberinstallment` > 0
	) t ON `lad`.`id` = `t`.`id`
	SET `lad`.`expirationdate` = DATE_ADD(inExpirationDate, INTERVAL `t`.`rn` MONTH),
		`lad`.`paymentdate` =  CASE 
        WHEN `lad`.`paymentdate` IS NULL THEN NULL
        ELSE `lad`.`paymentdate`
    END;
END$$

DELIMITER ;

