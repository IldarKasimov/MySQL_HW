USE lesson_1;

DELIMITER $$
DROP FUNCTION IF EXISTS second_to_day;
CREATE FUNCTION second_to_day (seconds INT)
RETURNS VARCHAR(500)
DETERMINISTIC
BEGIN
	DECLARE days INT;
	DECLARE hours INT;
	DECLARE minutes INT;
	DECLARE message VARCHAR(500);
	
	SET days = seconds DIV (60*60*24);
	SET seconds = seconds MOD (60*60*24);
	SET hours = seconds DIV (60*60);
	SET seconds = seconds MOD (60*60);
	SET minutes = seconds DIV 60;
	SET seconds = seconds MOD 60;
	
	SET message = CONCAT(days, ' days, ', hours, ' hours, ', minutes, ' minutes, ', seconds, ' seconds');
	RETURN message;
END $$
DELIMITER ;
    
SELECT second_to_day(25255556);