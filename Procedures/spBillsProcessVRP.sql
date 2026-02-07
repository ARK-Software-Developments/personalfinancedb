/* Definition for the `spBillsGetProcess` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spBillsProcessVRP`(
        in pYear int,
        in pTipo varchar(1),
        in pValue tinyint(1)
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
SET
  SQL_SAFE_UPDATES = 0;
	UPDATE `bills`
SET
  `verified` = CASE
    WHEN pTipo = "V" THEN pValue
    ELSE `verified`
  END,
  `reserved` = CASE
    WHEN pTipo = "R" THEN pValue
    ELSE `reserved`
  END,
  `paid` = CASE
    WHEN pTipo = "P" THEN pValue
    ELSE `paid`
  END
WHERE
  `year` = pYear AND `active` = 1;

SET
  SQL_SAFE_UPDATES = 1;
END$$

DELIMITER ;

