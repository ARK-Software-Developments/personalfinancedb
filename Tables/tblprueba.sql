/* Structure for the `tblprueba` table : */

CREATE TABLE `tblprueba` (
  `idtblPrueba` INTEGER NOT NULL AUTO_INCREMENT,
  `tblPruebacol` DATETIME DEFAULT NULL,
  `tblPruebacol1` VARCHAR(45) COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY USING BTREE (`idtblPrueba`)
) ENGINE=InnoDB
AUTO_INCREMENT=3 ROW_FORMAT=DYNAMIC CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci';

/* Data for the `tblprueba` table  (LIMIT 0,500) */

INSERT INTO `tblprueba` (`idtblPrueba`, `tblPruebacol`, `tblPruebacol1`) VALUES
  (2,'2026-01-09 14:17:53','inicio'),
  (3,'2026-01-09 14:25:00','inicio 2');
COMMIT;

