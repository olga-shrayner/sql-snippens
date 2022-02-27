# цикл с постусловием - REPEAT
# пример 5
DROP PROCEDURE IF EXISTS my_now;
DELIMITER //

CREATE PROCEDURE my_now ()
BEGIN
  DECLARE i INT DEFAULT 4;
  WHILE i > 0 DO
	SELECT NOW();
	SET i = i - 1;
  END WHILE;
END//

CALL my_now()//
DELIMITER ;
