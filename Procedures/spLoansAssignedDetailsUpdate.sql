/* Definition for the `spLoansAssignedDetailsUpdate` procedure : */

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `spLoansAssignedDetailsUpdate`(
	IN inId INT,
	IN inLoansAssignedId INT,
	IN inNumberInstallment INT,
	IN inFeeAmount DECIMAL(10,2),
	IN inPaymentDate DATETIME,
	IN inProofOfPayment VARCHAR(100),
	IN inPaymentMethod VARCHAR(45),
	IN inStatus  VARCHAR(45),
	IN inObservations  VARCHAR(255)
)
BEGIN
	UPDATE `loansassigneddetails`
	SET
	`loansassignedid` = inLoansAssignedId,
	`numberinstallment` = inNumberInstallment,
	`feeamount` = inFeeAmount,
	`paymentdate` = inPaymentDate,
	`proofofpayment` = inProofOfPayment,
	`paymentmethod` = inPaymentMethod,
	`status` = inStatus,
	`observations` = inObservations
	WHERE `id` = inId;

END$$

DELIMITER ;
