/* Definition for the `spBalanceUpdateProcess` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spBalanceUpdateProcess`(
        IN `ptipoGasto` INTEGER,
        IN `pYear` INTEGER,
        IN `pMonth` VARCHAR(45),
        IN `pTotal` DECIMAL(10,2)
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	-- Construcción del SQL dinámico
	SET @sql = CONCAT(
    'UPDATE `bills` SET `',
    pMonth, '` = ', pTotal, ', ',
    '`paid` = 1',
    ' WHERE `active` = 1 AND `year` = ', pYear,
    ' AND `typeofexpenseid` = ', ptipoGasto
);

	-- Preparar y ejecutar
	PREPARE stmt FROM @sql;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
END$$

DELIMITER ;

