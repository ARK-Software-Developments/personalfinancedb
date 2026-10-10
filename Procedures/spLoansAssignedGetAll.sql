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
       l.`firstinstallmentamount`,
       l.`entityid`,
       e.`entity`,
       e.`entitytype`,
       l.`transactioncode`,
       l.`state`,
       (SELECT COUNT(ld.`id`)
        FROM `loansassigneddetails` ld
        WHERE ld.`loansassignedid` = l.`id` AND (ld.`status` IS NULL OR ld.`status` <> 'COMPLETADO')) AS quantityinstallments,
       (SELECT IFNULL(SUM(d.`feeamount`), 0)
        FROM `loansassigneddetails` d
        WHERE d.`loansassignedid` = l.`id` AND (d.`status` IS NULL OR d.`status` <> 'COMPLETADO')) AS partialamount
	FROM `loansassigned` l
	LEFT JOIN `entities` e ON l.`entityid` = e.`id`;
END$$

DELIMITER ;

