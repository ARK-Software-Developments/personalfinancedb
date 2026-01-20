/* Structure for the `users` table : */

CREATE TABLE `users` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `nick` VARCHAR(45) COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `lasname` VARCHAR(45) COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `firstname` VARCHAR(45) COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` VARCHAR(45) COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` VARCHAR(45) COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `active` TINYINT(1) DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE=InnoDB
AUTO_INCREMENT=1 ROW_FORMAT=DYNAMIC CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci';

/* Data for the `users` table  (LIMIT 0,500) */

INSERT INTO `users` (`id`, `nick`, `lasname`, `firstname`, `email`, `password`, `active`) VALUES
  (1,'ark7511','Andres','Kamycki','andres.kamycki@gmail.com','7511',1);
COMMIT;

