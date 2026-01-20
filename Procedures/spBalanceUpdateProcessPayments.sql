/* Definition for the `spBalanceUpdateProcessPayments` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spBalanceUpdateProcessPayments`(
        IN `pYear` INTEGER,
        IN `pMonth` INTEGER
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	DECLARE v_amountpaid DECIMAL(10,2);
    
	SELECT 
        IFNULL(SUM(`amountpaid`), 0)
    INTO 
        v_amountpaid
	FROM
		`payments`
	WHERE
		YEAR(`dateofpayment`) = pYear
			AND MONTH(`dateofpayment`) = pMonth;
            
	SET SQL_SAFE_UPDATES = 0;
    UPDATE `balance`
	SET `january`   = CASE WHEN pMonth = 1 THEN v_amountpaid ELSE `january` END,
			`february`  = CASE WHEN pMonth = 2 THEN v_amountpaid ELSE `february` END,
			`march`     = CASE WHEN pMonth = 3 THEN v_amountpaid ELSE `march` END,
			`april`     = CASE WHEN pMonth = 4 THEN v_amountpaid ELSE `april` END,
			`may`       = CASE WHEN pMonth = 5 THEN v_amountpaid ELSE `may` END,
			`june`      = CASE WHEN pMonth = 6 THEN v_amountpaid ELSE `june` END,
			`july`      = CASE WHEN pMonth = 7 THEN v_amountpaid ELSE `july` END,
			`august`    = CASE WHEN pMonth = 8 THEN v_amountpaid ELSE `august` END,
			`september` = CASE WHEN pMonth = 9 THEN v_amountpaid ELSE `september` END,
			`october`  = CASE WHEN pMonth = 10 THEN v_amountpaid ELSE `october` END,
			`november`  = CASE WHEN pMonth = 11 THEN v_amountpaid ELSE `november` END,
			`december`  = CASE WHEN pMonth = 12 THEN v_amountpaid ELSE `december` END
	WHERE `year` = pYear AND `concept` = 'EGRESO';
    SET SQL_SAFE_UPDATES = 1;
END$$

DELIMITER ;

