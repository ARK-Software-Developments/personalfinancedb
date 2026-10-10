DELIMITER $$

CREATE EVENT ev_notification_cuotas_atrasadas
ON SCHEDULE EVERY 1 MONTH
STARTS '2026-11-01 08:00:00'
DO
BEGIN

    INSERT INTO notification (
        notificationdate,
        title,
        type,
        messaje,
        `to`,
        app,
        level,
        img,
        active
    )
    SELECT
        NOW(),
        CONCAT('Prestamo en riesgo: ', la.number, ' de ',ent.entity),
        'Notificación',
        CONCAT('El prestamo #',la.id,' posee ',COUNT(*),' cuotas en estado PAGO ATRAZADO, notificar a ', la.beneficiary),
        'andres.kamycki@gmail.com',
        'alert/email',
        'Warning!',
        'medium_priority-48.png',
        1
    FROM loansassigned la
    INNER JOIN loansassigneddetails lad ON lad.loansassignedid = la.id
	INNER JOIN entities ent ON la.entityid = ent.id
    WHERE la.state = 'PAGO ATRAZADO'
      AND lad.status = 'PAGO ATRAZADO'
      AND NOT EXISTS (
            SELECT 1
            FROM notification n
            WHERE n.title = 'Prestamo en riesgo'
              AND n.messaje LIKE CONCAT('%prestamo #', la.id, '%')
        )
    GROUP BY la.id
    HAVING COUNT(*) >= 2;

END$$

DELIMITER ;