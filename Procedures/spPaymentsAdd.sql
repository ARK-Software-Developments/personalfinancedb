/* Definition for the `spPaymentsAdd` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spPaymentsAdd`(
        IN `pRegistrationDate` DATETIME,
        IN `pDateOfPayment` DATETIME,
        IN `pRegistrationCode` VARCHAR(45),
        IN `pPaymentResourceId` INTEGER,
        IN `pPaymentType` VARCHAR(45),
        IN `pBudgetedAmount` DECIMAL(10,2),
        IN `pAmountPaid` DECIMAL(10,2),
        IN `pReasonForPayment` INTEGER
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN	
	INSERT INTO `payments` (
		`registrationdate`,
		`dateofpayment`,
		`registrationcode`,
		`paymentresourceid`,
		`paymenttype`,
		`budgetedamount`,
		`amountpaid`,
		`reasonforpayment`
	)
	VALUES (
		pRegistrationDate,
		pDateOfPayment,
		UPPER(pRegistrationCode),
		pPaymentResourceId,
		UPPER(pPaymentType),
		pBudgetedAmount,
		pAmountPaid,
		pReasonForPayment
	);
    
SELECT LAST_INSERT_ID() AS LastInsertedId;
END$$

DELIMITER ;

