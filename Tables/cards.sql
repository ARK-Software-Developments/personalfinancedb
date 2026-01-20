/* Structure for the `cards` table : */

CREATE TABLE `cards` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `cardname` VARCHAR(50) COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `closingdate` DATETIME DEFAULT NULL,
  `expirationdate` DATETIME DEFAULT NULL,
  `entityid` INTEGER DEFAULT NULL,
  `active` TINYINT(1) DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`),
  KEY `fk_entities_entityid_idx` USING BTREE (`entityid`),
  CONSTRAINT `fk_entities_entityid` FOREIGN KEY (`entityid`) REFERENCES `entities` (`id`)
) ENGINE=InnoDB
AUTO_INCREMENT=11 ROW_FORMAT=DYNAMIC CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci';

/* Data for the `cards` table  (LIMIT 0,500) */

INSERT INTO `cards` (`id`, `cardname`, `closingdate`, `expirationdate`, `entityid`, `active`) VALUES
  (1,'VISA RIO','2026-01-02 00:00:00','2025-12-10 00:00:00',1,1),
  (2,'AMERICAN EXPRESS RIO','2026-01-02 00:00:00','2025-12-13 00:00:00',1,1),
  (3,'VISA NX','2026-01-27 00:00:00','2025-12-10 00:00:00',2,1),
  (4,'MASTER CARD NX','2026-01-27 00:00:00','2025-12-10 00:00:00',2,1),
  (5,'VISA VIRTUAL NX','2026-01-27 00:00:00','2025-12-10 00:00:00',2,1),
  (6,'MASTER CARD MC','2026-01-27 00:00:00','2025-12-10 00:00:00',3,1);
COMMIT;

