/* Structure for the `mainmenus` table : */

CREATE TABLE `mainmenus` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `title` VARCHAR(45) COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `action` VARCHAR(45) COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `level` INTEGER DEFAULT NULL,
  `parentid` INTEGER DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE=InnoDB
AUTO_INCREMENT=8 ROW_FORMAT=DYNAMIC CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci';

/* Data for the `mainmenus` table  (LIMIT 0,500) */

INSERT INTO `mainmenus` (`id`, `name`, `title`, `action`, `level`, `parentid`) VALUES
  (1,'Inicio','Inicio','/',1,0),
  (2,'Ingresos','Ingresos','/incomes',1,0),
  (3,'Egresos','Egresos','/bills',1,0),
  (4,'Haberes','Entidades Mensuales','/income',2,2),
  (5,'Inversiones','Inversiones','/investments',2,2),
  (6,'Pedidos','Pedidos','/orders',2,3),
  (7,'Servicios','Servicios','/services',2,3),
  (8,'Compras Tarjetas','Compras de Tarjetas','/creditcardspending',2,3);
COMMIT;

