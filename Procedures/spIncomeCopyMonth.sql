/* Definition for the `spIncomeCopyMonth` procedure : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spIncomeCopyMonth`(
        IN `pYearFrom` INTEGER,
        IN `pYearTo` INTEGER,
        IN `pMonthFrom` INTEGER,
        IN `pMonthTo` INTEGER
    )
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN
	DECLARE done INT DEFAULT 0;
    DECLARE v_incomedetailsid INT;
    DECLARE v_selected_month DECIMAL(10,2);
    
    DECLARE cur CURSOR FOR
        SELECT `incomedetailsid`, 
        CASE
			WHEN pMonthFrom = 1 THEN `january`
			WHEN pMonthFrom = 2 THEN `february`
			WHEN pMonthFrom = 3 THEN `march`
            WHEN pMonthFrom = 4 THEN `april`
            WHEN pMonthFrom = 5 THEN `may`
            WHEN pMonthFrom = 6 THEN `june`
            WHEN pMonthFrom = 7 THEN `july`
            WHEN pMonthFrom = 8 THEN `august`
            WHEN pMonthFrom = 9 THEN `september`
            WHEN pMonthFrom = 10 THEN `october`
            WHEN pMonthFrom = 11 THEN `november`
            WHEN pMonthFrom = 12 THEN `december`
		END AS selected_month
        FROM `income`
        WHERE `year` = pYearFrom;

    -- Handler para fin del cursor
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    -- Abrir el cursor
    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO v_incomedetailsid, v_selected_month;
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Aquí puedes hacer lo que necesites con los valores
		-- Actualizar el año destino
		UPDATE `income`
		SET 
			`january`   = CASE WHEN pMonthTo = 1  THEN v_selected_month ELSE `january` END,
			`february`  = CASE WHEN pMonthTo = 2  THEN v_selected_month ELSE `february` END,
			`march`     = CASE WHEN pMonthTo = 3  THEN v_selected_month ELSE `march` END,
			`april`     = CASE WHEN pMonthTo = 4  THEN v_selected_month ELSE `april` END,
			`may`       = CASE WHEN pMonthTo = 5  THEN v_selected_month ELSE `may` END,
			`june`      = CASE WHEN pMonthTo = 6  THEN v_selected_month ELSE `june` END,
			`july`      = CASE WHEN pMonthTo = 7  THEN v_selected_month ELSE `july` END,
			`august`    = CASE WHEN pMonthTo = 8  THEN v_selected_month ELSE `august` END,
			`september` = CASE WHEN pMonthTo = 9  THEN v_selected_month ELSE `september` END,
			`october`   = CASE WHEN pMonthTo = 10 THEN v_selected_month ELSE `october` END,
			`november`  = CASE WHEN pMonthTo = 11 THEN v_selected_month ELSE `november` END,
			`december`  = CASE WHEN pMonthTo = 12 THEN v_selected_month ELSE `december` END
		WHERE `year` = pYearTo 
		  AND `incomedetailsid` = v_incomedetailsid;

    END LOOP;

    -- Cerrar el cursor
    CLOSE cur;
END$$

DELIMITER ;

