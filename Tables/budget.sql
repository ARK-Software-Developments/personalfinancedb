CREATE TABLE `budget` (
    `id` int NOT NULL AUTO_INCREMENT,
    `typeofexpenseid` int DEFAULT NULL,
    `summary` varchar(200) DEFAULT NULL,
    `currentmonth` decimal(10, 2) DEFAULT NULL,
    `proposedmonth` decimal(10, 2) DEFAULT NULL,
    `wallet` int DEFAULT NULL,
    `year` int DEFAULT NULL,
    `observations` varchar(255) DEFAULT NULL,
    `resourcepayment` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci