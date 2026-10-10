DELIMITER $$

CREATE EVENT ev_loansassigned_sin_proyeccion
ON SCHEDULE EVERY 1 MONTH
STARTS '2026-11-01 02:00:00'
DO
BEGIN

    UPDATE loansassigned
    SET state = 'SIN PROYECCION'
    WHERE id IN (
        SELECT id
        FROM (
            SELECT la.id
            FROM loansassigned la
            INNER JOIN loansassigneddetails lad
                ON lad.loansassignedid = la.id
            WHERE la.state = 'PAGO ATRAZADO'
              AND lad.status = 'PAGO ATRAZADO'
            GROUP BY la.id
            HAVING COUNT(*) > 3
        ) t
    );

END$$

DELIMITER ;