
# количество итераций задаем как аргумент процедуры
# пример 2
DROP PROCEDURE IF EXISTS my_now_in;
DELIMITER //

CREATE PROCEDURE my_now_in (IN num INT)
BEGIN
  DECLARE i INT DEFAULT 0;
  IF (num > 0) THEN
	WHILE i < num DO
  	SELECT NOW();
  	SET i = i + 1;
	END WHILE;
  ELSE
	SELECT 'error argument value';
  END IF;
END//

CALL my_now_in(4) //
DELIMITER ;
