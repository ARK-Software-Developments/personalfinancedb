/* Structure for the `duedatesschedule` table : */

CREATE TABLE `duedatesschedule` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `scheduledateexpiration` DATETIME DEFAULT NULL,
  `typeofexpenseid` INTEGER DEFAULT NULL,
  `active` TINYINT(1) DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE=InnoDB
AUTO_INCREMENT=16 ROW_FORMAT=DYNAMIC CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci';

/* Data for the `duedatesschedule` table  (LIMIT 0,500) */

INSERT INTO `duedatesschedule` (`id`, `scheduledateexpiration`, `typeofexpenseid`, `active`) VALUES
  (1,'2026-01-10 00:00:00',3,1),
  (2,'2026-01-31 00:00:00',4,1),
  (3,'2026-01-31 00:00:00',7,1),
  (4,'2026-01-15 00:00:00',28,1),
  (5,'2026-01-22 00:00:00',30,1),
  (6,'2026-01-17 00:00:00',31,1),
  (7,'2026-01-23 00:00:00',32,1),
  (8,'2026-01-15 00:00:00',22,1),
  (9,'2026-01-29 00:00:00',22,1),
  (10,'2026-01-31 00:00:00',14,1),
  (11,'2026-01-21 00:00:00',26,1),
  (12,'2026-01-10 00:00:00',1,1),
  (13,'2026-01-31 00:00:00',8,1),
  (14,'2026-01-31 00:00:00',19,1),
  (15,'2026-01-15 00:00:00',21,1);
COMMIT;

