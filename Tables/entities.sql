/* Structure for the `entities` table : */

CREATE TABLE `entities` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `entity` VARCHAR(100) COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `entitytype` VARCHAR(45) COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE=InnoDB
AUTO_INCREMENT=13 ROW_FORMAT=DYNAMIC CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci';

/* Data for the `entities` table  (LIMIT 0,500) */

INSERT INTO `entities` (`id`, `entity`, `entitytype`) VALUES
  (1,'SANTANDER RIO','RIO'),
  (2,'NARANJA X','NX'),
  (3,'MERCADO PAGO/CREDITO','MP'),
  (4,'UALA','UA'),
  (5,'SATOSHITANGO','ST'),
  (6,'IOL','IOL'),
  (7,'PERSONAL PLAY','PPY'),
  (8,'SUPERVIELLE','SUP');
COMMIT;

