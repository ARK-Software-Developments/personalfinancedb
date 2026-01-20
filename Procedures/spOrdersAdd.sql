/* Definition for the `spOrdersAdd` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spOrdersAdd`(
        IN `pNumero` INTEGER,
        IN `pFechaPedido` DATETIME,
        IN `pMontoTotal` DECIMAL(10,2),
        IN `pTipoRecurso` VARCHAR(45),
        IN `pEstado` INTEGER
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	INSERT INTO `orders` (`number`, `orderdate`, `totalamount`, `resourcetype`, `statusid`)
	VALUES (pNumero, pFechaPedido, pMontoTotal, pTipoRecurso, pEstado);
END$$

DELIMITER ;

