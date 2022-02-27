
# досрочный выход из цикла - LEAVE
# пример 3
DROP PROCEDURE IF EXISTS my_now_in;
DELIMITER //

CREATE PROCEDURE my_now_in (IN num INT)
BEGIN
  DECLARE i INT DEFAULT 0;
  IF (num > 0) THEN
	cycle: WHILE i < num DO
  	IF i >= 3 THEN LEAVE cycle;
  	END IF;
  	SELECT NOW();
  	SET i = i + 1;
	END WHILE cycle;
  ELSE
	SELECT 'error argument value';
  END IF;
END//

CALL my_now_in(10)//
DELIMITER ;
