/* Definition for the `job_change_status_loands` event : */

DELIMITER $$

CREATE DEFINER = 'root'@'localhost' EVENT `job_change_status_loands`
    ON SCHEDULE EVERY 1 DAY STARTS '2026-10-01 23:59:00.000'
    ON COMPLETION NOT PRESERVE
    ENABLE
    COMMENT ''  DO

    UPDATE `loansassigneddetails`
    SET `status` = 'PAGO ATRAZADO'
    WHERE `id` IN (
        SELECT `id`
        FROM (
            SELECT `lad`.`id`
            FROM `loansassigneddetails` lad
            INNER JOIN `loansassigned` la
                ON `la`.`id` = `lad`.`loansassignedid`
            WHERE `lad`.`status` = 'PENDIENTE'
            AND `lad`.`expirationdate` < CURDATE()
            AND `la`.`state` NOT IN ('PERDIDO', 'SIN PROYECCION', 'COMPLETADO')
        ) t
    );$$

DELIMITER ;