/* Definition for the `spBalanceUpdateProcessBills` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spBalanceUpdateProcessBills`(
        IN `pYear` INTEGER,
        IN `pMonth` INTEGER
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN	
	DECLARE pAmountBill DECIMAL(10,2);
    DECLARE pAmountIncome DECIMAL(10,2);
    DECLARE pAmountBalance DECIMAL(10,2);
    SET SQL_SAFE_UPDATES = 0;
    
	SELECT  
			CASE
				WHEN pMonth = 1 THEN SUM(`january`)
				WHEN pMonth = 2 THEN SUM(`february`)
				WHEN pMonth = 3 THEN SUM(`march`)
				WHEN pMonth = 4 THEN SUM(`april`)
				WHEN pMonth = 5 THEN SUM(`may`)
				WHEN pMonth = 6 THEN SUM(`june`)
				WHEN pMonth = 7 THEN SUM(`july`)
				WHEN pMonth = 8 THEN SUM(`august`)
				WHEN pMonth = 9 THEN SUM(`september`)
				WHEN pMonth = 10 THEN SUM(`october`)
				WHEN pMonth = 11 THEN SUM(`november`)
				WHEN pMonth = 12 THEN SUM(`december`)
			END     
	INTO pAmountBill
    FROM `bills`
	WHERE `year` = pYear AND `active` = 1;
	
    -- Obtiene el valor de Ingresos
	SELECT  
			CASE
				WHEN pMonth = 1 THEN SUM(`january`)
				WHEN pMonth = 2 THEN SUM(`february`)
				WHEN pMonth = 3 THEN SUM(`march`)
				WHEN pMonth = 4 THEN SUM(`april`)
				WHEN pMonth = 5 THEN SUM(`may`)
				WHEN pMonth = 6 THEN SUM(`june`)
				WHEN pMonth = 7 THEN SUM(`july`)
				WHEN pMonth = 8 THEN SUM(`august`)
				WHEN pMonth = 9 THEN SUM(`september`)
				WHEN pMonth = 10 THEN SUM(`october`)
				WHEN pMonth = 11 THEN SUM(`november`)
				WHEN pMonth = 12 THEN SUM(`december`)
			END     
	INTO pAmountIncome
    FROM `income`
	WHERE `year` = pYear;
    
	UPDATE `balance` 
	SET 
		`january` = CASE
			WHEN pMonth = 1 THEN pAmountBill
			ELSE `january`
		END,
		`february` = CASE
			WHEN pMonth = 2 THEN pAmountBill
			ELSE `february`
		END,
		`march` = CASE
			WHEN pMonth = 3 THEN pAmountBill
			ELSE `march`
		END,
		`april` = CASE
			WHEN pMonth = 4 THEN pAmountBill
			ELSE `april`
		END,
		`may` = CASE
			WHEN pMonth = 5 THEN pAmountBill
			ELSE `may`
		END,
		`june` = CASE
			WHEN pMonth = 6 THEN pAmountBill
			ELSE `june`
		END,
		`july` = CASE
			WHEN pMonth = 7 THEN pAmountBill
			ELSE `july`
		END,
		`august` = CASE
			WHEN pMonth = 8 THEN pAmountBill
			ELSE `august`
		END,
		`september` = CASE
			WHEN pMonth = 9 THEN pAmountBill
			ELSE `september`
		END,
		`october` = CASE
			WHEN pMonth = 10 THEN pAmountBill
			ELSE `october`
		END,
		`november` = CASE
			WHEN pMonth = 11 THEN pAmountBill
			ELSE `november`
		END,
		`december` = CASE
			WHEN pMonth = 12 THEN pAmountBill
			ELSE `december`
		END
	WHERE
		`year` = pYear
			AND `concept` = 'PRESUPUESTO';
            
	-- Actualiza el concept BALANCE
    SET pAmountBalance = pAmountIncome - pAmountBill;
    
    UPDATE `balance` 
	SET 
		`january` = CASE
			WHEN pMonth = 1 THEN pAmountBalance
			ELSE `january`
		END,
		`february` = CASE
			WHEN pMonth = 2 THEN pAmountBalance
			ELSE `february`
		END,
		`march` = CASE
			WHEN pMonth = 3 THEN pAmountBalance
			ELSE `march`
		END,
		`april` = CASE
			WHEN pMonth = 4 THEN pAmountBalance
			ELSE `april`
		END,
		`may` = CASE
			WHEN pMonth = 5 THEN pAmountBalance
			ELSE `may`
		END,
		`june` = CASE
			WHEN pMonth = 6 THEN pAmountBalance
			ELSE `june`
		END,
		`july` = CASE
			WHEN pMonth = 7 THEN pAmountBalance
			ELSE `july`
		END,
		`august` = CASE
			WHEN pMonth = 8 THEN pAmountBalance
			ELSE `august`
		END,
		`september` = CASE
			WHEN pMonth = 9 THEN pAmountBalance
			ELSE `september`
		END,
		`october` = CASE
			WHEN pMonth = 10 THEN pAmountBalance
			ELSE `october`
		END,
		`november` = CASE
			WHEN pMonth = 11 THEN pAmountBalance
			ELSE `november`
		END,
		`december` = CASE
			WHEN pMonth = 12 THEN pAmountBalance
			ELSE `december`
		END
    WHERE
		`year` = pYear
			AND `concept` = 'BALANCE';
            
	SET SQL_SAFE_UPDATES = 1;
END$$

DELIMITER ;

