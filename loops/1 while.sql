# проверка условия в начале каждой итерации цикла
# пример 1
DROP PROCEDURE IF EXISTS while_example;
DELIMITER //

CREATE PROCEDURE while_example ()
BEGIN
  DECLARE i INT DEFAULT 3;
  WHILE i > 0 DO
	SET @timeNow = DATE_ADD(NOW(), INTERVAL i DAY);
	select @timeNow;
	SET i = i - 1;
  END WHILE;
END//

CALL my_now()//
DELIMITER ;
