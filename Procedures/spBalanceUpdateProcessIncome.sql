/* Definition for the `spBalanceUpdateProcessBills` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spBalanceUpdateProcessIncome`(
        IN `pYear` INTEGER,
        IN `pMonth` INTEGER
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN	
	DECLARE pAmount DECIMAL(10,2);    
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
	INTO pAmount
    FROM `income`
	WHERE `year` = pYear;

	UPDATE `balance` 
	SET 
		`january` = CASE
			WHEN pMonth = 1 THEN pAmount
			ELSE `january`
		END,
		`february` = CASE
			WHEN pMonth = 2 THEN pAmount
			ELSE `february`
		END,
		`march` = CASE
			WHEN pMonth = 3 THEN pAmount
			ELSE `march`
		END,
		`april` = CASE
			WHEN pMonth = 4 THEN pAmount
			ELSE `april`
		END,
		`may` = CASE
			WHEN pMonth = 5 THEN pAmount
			ELSE `may`
		END,
		`june` = CASE
			WHEN pMonth = 6 THEN pAmount
			ELSE `june`
		END,
		`july` = CASE
			WHEN pMonth = 7 THEN pAmount
			ELSE `july`
		END,
		`august` = CASE
			WHEN pMonth = 8 THEN pAmount
			ELSE `august`
		END,
		`september` = CASE
			WHEN pMonth = 9 THEN pAmount
			ELSE `september`
		END,
		`october` = CASE
			WHEN pMonth = 10 THEN pAmount
			ELSE `october`
		END,
		`november` = CASE
			WHEN pMonth = 11 THEN pAmount
			ELSE `november`
		END,
		`december` = CASE
			WHEN pMonth = 12 THEN pAmount
			ELSE `december`
		END
	WHERE
		`year` = pYear
			AND `concept` = 'INGRESO';
	SET SQL_SAFE_UPDATES = 1;
END$$

DELIMITER ;

