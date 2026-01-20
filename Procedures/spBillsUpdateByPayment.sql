/* Definition for the `spBillsUpdateByPayment` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spBillsUpdateByPayment`(
        IN `pTypeOfExpenseId` INTEGER,
        IN `pAmount` DECIMAL(10,2),
        IN `pMonth` INTEGER,
        IN `pYear` INTEGER
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	UPDATE bills
	SET `january`   = CASE WHEN pMonth = 1 THEN `january` + pAmount ELSE `january` END,
		`february`  = CASE WHEN pMonth = 2 THEN `february` + pAmount ELSE `february` END,
		`march`     = CASE WHEN pMonth = 3 THEN `march` + pAmount ELSE `march` END,
		`april`     = CASE WHEN pMonth = 4 THEN `april` + pAmount ELSE `april` END,
		`may`       = CASE WHEN pMonth = 5 THEN `may` + pAmount ELSE `may` END,
		`june`      = CASE WHEN pMonth = 6 THEN `june` + pAmount ELSE `june` END,
		`july`      = CASE WHEN pMonth = 7 THEN `july` + pAmount ELSE `july` END,
		`august`    = CASE WHEN pMonth = 8 THEN `august` + pAmount ELSE `august` END,
		`september` = CASE WHEN pMonth = 9 THEN `september` + pAmount ELSE `september` END,
		`october`  = CASE WHEN pMonth = 10 THEN `october` + pAmount ELSE `october` END,
		`november`  = CASE WHEN pMonth = 11 THEN `november` + pAmount ELSE `november` END,
		`december`  = CASE WHEN pMonth = 12 THEN `december` + pAmount ELSE `december` END,
        `paid` = 1
	WHERE `year` = pYear AND `typeofexpenseid` = pTypeOfExpenseId;
END$$

DELIMITER ;

