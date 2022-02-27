# цикл без условия выхода - LOOP (внутри необходимо вызвать LEAVE)
# пример 6
DROP PROCEDURE IF EXISTS my_now_in;
DELIMITER //

CREATE PROCEDURE my_now_in ()
BEGIN
  DECLARE i INT DEFAULT 4;
  cycle: LOOP
	SELECT NOW();
	SET i = i - 1;
	IF i <= 0 THEN LEAVE cycle;
	END IF;
  END LOOP cycle;
END//
CALL my_now_in()//
DELIMITER ;