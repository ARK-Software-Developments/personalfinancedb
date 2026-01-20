/* Structure for the `categories` table : */

CREATE TABLE `categories` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `category` VARCHAR(50) COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE=InnoDB
AUTO_INCREMENT=12 ROW_FORMAT=DYNAMIC CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci';

/* Data for the `categories` table  (LIMIT 0,500) */

INSERT INTO `categories` (`id`, `category`) VALUES
  (1,'GASTOS PRIMARIOS'),
  (2,'GASTOS SECUNDARIOS'),
  (3,'EDUCACION'),
  (4,'FAMILIA'),
  (5,'INVERSIONES'),
  (6,'JUDICIALES'),
  (7,'SALUD'),
  (8,'PRESTAMOS'),
  (9,'SERVICIOS'),
  (10,'DEMO5553');
COMMIT;

