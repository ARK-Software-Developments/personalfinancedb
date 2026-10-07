/* Definition for the `spLoansAssignedDetailsGetByLoanId` procedure : */

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `spLoansAssignedDetailsGetByLoanId`(
	IN pLoansAssignedId INT
)
BEGIN
	SELECT `id`,
		`loansassignedid`,
		`numberinstallment`,
		`feeamount`,
		`paymentdate`,
        `expirationdate`,
		`proofofpayment`,
		`paymentmethod`,
		`status`,
		`observations`
	FROM `loansassigneddetails`
    WHERE `loansassignedid` =  pLoansAssignedId;
END$$

DELIMITER ;