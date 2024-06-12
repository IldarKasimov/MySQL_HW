DELIMITER $$
DROP PROCEDURE IF EXISTS even_numbers;
CREATE PROCEDURE even_numbers()
BEGIN
	DECLARE num INT DEFAULT 2;
    DECLARE res VARCHAR(55) DEFAULT 2;
    WHILE num < 10 DO
		SET num = num + 2;
        SET res = CONCAT(res,',', num);
	END WHILE;
SELECT res;
END $$
DELIMITER ;

CALL even_numbers();