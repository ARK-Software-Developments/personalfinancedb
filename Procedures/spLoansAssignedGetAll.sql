/* Definition for the `spLoansAssignedGetAll` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spLoansAssignedGetAll`()
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	SELECT l.`id`,
		l.`number`,
		l.`beneficiary`,
		l.`depositdate`,
		l.`reason`,
		l.`summary`,
		l.`capitalamount`,
		l.`totalamount`,
		l.`numberofinstallments`,
        l.`entityid`,
        e.`entity`,
        e.`entitytype`,
        l.`transactioncode`,
		l.`state`
	FROM `loansassigned` l
    LEFT JOIN `entities` e ON l.`entityid` = e.`id`;
END$$

DELIMITER ;

