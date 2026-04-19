/* Definition for the `spBillsResumeCategoryGet` procedure : */

DELIMITER $$
USE `personalfinance`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spBillsResumeCategoryGet`(
	in pYear int,
    in pActive int
)
BEGIN
	SELECT `c`.`category`, 
		SUM(`b`.`january`) january,
		SUM(`b`.`february`) february,
		SUM(`b`.`march`) march,
		SUM(`b`.`april`) april, 
		SUM(`b`.`may`) may, 
		SUM(`b`.`june`) june, 
		SUM(`b`.`july`) july, 
		SUM(`b`.`august`) august, 
		SUM(`b`.`september`) septembre, 
		SUM(`b`.`october`) october, 
		SUM(`b`.`november`) november, 
		SUM(`b`.`december`) december
		FROM `bills` b
		INNER JOIN `typeofexpense` t ON `b`.`typeofexpenseid` = `t`.`id`
		INNER JOIN `categories` c ON `t`.`categoriesid` = `c`.`id`
		WHERE `b`.`year` = pYear 
		AND `b`.`active` = pActive
		GROUP BY `c`.`category`;
END$$

DELIMITER ;