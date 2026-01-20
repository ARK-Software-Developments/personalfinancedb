/* Definition for the `spBalanceUpdateProcessPostCreditCard` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spBalanceUpdateProcessPostCreditCard`(
        IN `pId` INTEGER,
        IN `pMonth` INTEGER,
        IN `pAmount` DECIMAL(10,2)
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	SET SQL_SAFE_UPDATES = 0;
    
	UPDATE `bills` 
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
			WHEN pMonth = 9 THEN + pAmount
			ELSE `september`
		END,
		`october` = CASE
			WHEN pMonth = 10 THEN pAmount
			ELSE `october`
		END,
		`november` = CASE
			WHEN pMonth = 11 THEN + pAmount
			ELSE `november`
		END,
		`december` = CASE
			WHEN pMonth = 12 THEN + pAmount
			ELSE `december`
		END
	WHERE
		`id` = pId;
	
    SET SQL_SAFE_UPDATES = 1;
END$$

DELIMITER ;

