/* Definition for the `spLoansAssignedAdd` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spLoansAssignedAdd`
(
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
	INSERT INTO `loansassigned` (
	  `beneficiary`, `depositdate`, `reason`, 
	  `summary`, `capitalamount`, `totalamount`, 
	  `numberofinstallments`, `state`, `number`, `transactioncode`, `entityid`
	) 
	VALUES 
	  (
		UPPER(inBeneficiary), inDepositDate, UPPER(inReason), 
		UPPER(inSummary), inCapitalAmount, inTotalAmount, 
		inNumberOfInstallments, UPPER(inState), UPPER(inNumber),
        UPPER(inTransactionCode), inEntityId
	  );

    SELECT LAST_INSERT_ID() AS LastInsertedId;
END$$

DELIMITER ;

