/* Definition for the `spLoansAssignedDetailsAdd` procedure : */

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `spLoansAssignedDetailsAdd`(
	IN inLoansAssignedId INT,
	IN inNumberInstallment INT,
	IN inFeeAmount DECIMAL(10,2),
	IN inPaymentDate DATETIME,
    IN inExpirationDate DATETIME,
	IN inProofOfPayment VARCHAR(100),
	IN inPaymentMethod VARCHAR(45),
	IN inStatus  VARCHAR(45),
	IN inObservations  VARCHAR(255)
)
BEGIN
INSERT INTO `loansassigneddetails`
	(
	`loansassignedid`,
	`numberinstallment`,
	`feeamount`,
	`paymentdate`,
    `expirationdate`,
	`proofofpayment`,
	`paymentmethod`,
	`status`,
	`observations`)
	VALUES
	(inLoansAssignedId,
	inNumberInstallment,
	inFeeAmount,
	inPaymentDate,
    inExpirationDate,
	UPPER(inProofOfPayment),
	inPaymentMethod,
	inStatus,
	UPPER(inObservations)
	);

	SELECT LAST_INSERT_ID() AS LastInsertedId;
END$$

DELIMITER ;