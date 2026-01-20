/* Structure for the `logs` table : */

CREATE TABLE `logs` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `dateprocess` DATETIME DEFAULT NULL,
  `type` VARCHAR(45) COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `code` VARCHAR(45) COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `message` VARCHAR(255) COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE=InnoDB
AUTO_INCREMENT=8 ROW_FORMAT=DYNAMIC CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci';

/* Data for the `logs` table  (LIMIT 0,500) */

INSERT INTO `logs` (`id`, `dateprocess`, `type`, `code`, `message`) VALUES
  (1,'2026-01-18 02:19:53','update_bills','1','Se ha actualizado un registro en la tabla bills'),
  (2,'2026-01-18 02:20:43','update_bills','1','Se ha actualizado un registro en la tabla bills'),
  (3,'2026-01-18 15:49:29','update_bills','1','Se ha actualizado un registro en la tabla bills'),
  (4,'2026-01-18 15:49:37','update_bills','1','Se ha actualizado un registro en la tabla bills'),
  (5,'2026-01-18 15:49:46','update_bills','1','Se ha actualizado un registro en la tabla bills'),
  (6,'2026-01-18 15:49:58','update_bills','1','Se ha actualizado un registro en la tabla bills'),
  (7,'2026-01-18 15:50:04','update_bills','1','Se ha actualizado un registro en la tabla bills'),
  (8,'2026-01-18 15:50:14','update_bills','1','Se ha actualizado un registro en la tabla bills');
COMMIT;

