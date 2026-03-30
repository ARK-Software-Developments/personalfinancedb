/* Definition for the `spLoansAssignedUpdate` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spLoansAssignedUpdate`(
    IN inId INT,
    IN inNumber VARCHAR(100),
    IN inBeneficiary VARCHAR(255),
	IN inDepositDate DATETIME,
	IN inReason VARCHAR(255),
	IN inSummary VARCHAR(100),
	IN inCapitalAmount  DECIMAL(10,2),
	IN inTotalAmount DECIMAL(10,2),
	IN inNumberOfInstallments INT,
	IN inState VARCHAR(45),
    IN inEntityId INT,
    IN inTransactionCode VARCHAR(45)
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN 
    UPDATE `loansassigned` 
	SET 
		`number` = UPPER(inNumber),
		`beneficiary` = UPPER(inBeneficiary),
		`depositdate` = inDepositDate,
		`reason` = UPPER(inReason),
		`summary` = UPPER(inSummary),
		`capitalamount` = inCapitalAmount,
		`totalamount` = inTotalAmount,
		`transactioncode` = UPPER(inTransactionCode),
		`numberofinstallments` = inNumberOfInstallments,
		`entityid` = inEntityId,
		`state` = UPPER(inState)
	WHERE
		`id` = inId;
END$$

DELIMITER ;