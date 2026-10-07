/* Definition for the `spLoansAssignedDetailsGetAll` procedure : */

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `spLoansAssignedDetailsGetAll`()
BEGIN
	SELECT `id`,
		`loansassignedid`,
		`numberinstallment`,
		`feeamount`,
		`paymentdate`,
		`proofofpayment`,
		`paymentmethod`,
        `expirationdate`,
		`status`,
		`observations`
	FROM `loansassigneddetails`;
END$$

DELIMITER ;