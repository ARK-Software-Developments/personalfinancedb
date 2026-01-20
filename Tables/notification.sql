/* Structure for the `notification` table : */

CREATE TABLE `notification` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `notificationdate` DATETIME DEFAULT NULL,
  `title` VARCHAR(45) COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `type` VARCHAR(45) COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `messaje` VARCHAR(255) COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `to` VARCHAR(200) COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `app` VARCHAR(45) COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `level` VARCHAR(45) COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `img` VARCHAR(45) COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `active` TINYINT(1) DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE=InnoDB
AUTO_INCREMENT=10 ROW_FORMAT=DYNAMIC CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci';

/* Data for the `notification` table  (LIMIT 0,500) */

INSERT INTO `notification` (`id`, `notificationdate`, `title`, `type`, `messaje`, `to`, `app`, `level`, `img`, `active`) VALUES
  (1,'2026-01-18 23:54:04','Vencimiento Resumen TC VISA RI','Notificación','El resumen de la Tarjeta, vence el 10/01/2026. Se vencerá pronto!!!','andres.kamycki@gmail.com','alert/email','Warning!','medium_priority-48.png',0),
  (2,'2026-01-17 00:11:39','Vencimiento Resumen TC AMERICAN EXPRESS RIO','Notificación','El resumen de la Tarjeta, vence el 13/01/2026. Se vencerá pronto!!!','andres.kamycki@gmail.com','alert/email','Warning!','medium_priority-48.png',0),
  (3,'2026-01-11 00:11:39','Vencimiento Resumen TC VISA NX','Notificación','El resumen de la Tarjeta, vence el 10/01/2026. Se vencerá pronto!!!','andres.kamycki@gmail.com','alert/email','Warning!','medium_priority-48.png',0),
  (4,'2026-01-11 00:11:39','Vencimiento Resumen TC MASTER CARD NX','Notificación','El resumen de la Tarjeta, vence el 10/01/2026. Se vencerá pronto!!!','andres.kamycki@gmail.com','alert/email','Warning!','medium_priority-48.png',0),
  (5,'2026-01-11 00:11:39','Vencimiento Resumen TC VISA VIRTUAL NX','Notificación','El resumen de la Tarjeta, vence el 10/01/2026. Se vencerá pronto!!!','andres.kamycki@gmail.com','alert/email','Warning!','medium_priority-48.png',0),
  (6,'2026-01-21 00:00:00','Vencimiento Linea Personal','Notificacion','El resumen de Servicio Personal Plan 8GB, vence el 21/01/2026. Se vencerá pronto!!!','andres.kamycki@gmail.com','alert/email','Warning!','medium_priority-48.png',1),
  (7,'2026-01-17 00:00:00','Vencimiento Suscripcion YouTube','Notificacion','La suscripción de YouTube Premiun, vence el 17/01/2026. Se vencerá pronto!!!','andres.kamycki@gmail.com','alert/email','Warning!','medium_priority-48.png',0),
  (8,'2026-01-24 00:00:00','Vencimiento Suscripcion LinkedIn','Notificacion','La suscripción de LinkedIn, vence el 24/01/2026. Se vencerá pronto!!!','andres.kamycki@gmail.com','alert/email','Warning!','medium_priority-48.png',1),
  (9,'2026-01-23 00:00:00','Vencimiento Suscripcion Spotify','Notificacion','La suscripción de Spotify Plan Familiar, vence el 23/01/2026. Se vencerá pronto!!!','andres.kamycki@gmail.com','alert/email','Warning!','medium_priority-48.png',1);
COMMIT;

