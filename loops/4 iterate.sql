# досрочный переход к следующей итерации - ITERATE 
# пример 4
DROP PROCEDURE IF EXISTS num_str;
DELIMITER //

CREATE PROCEDURE num_str (IN num INT)
BEGIN
  DECLARE i INT DEFAULT 0;
  DECLARE var TINYTEXT DEFAULT '';
  IF (num > 0) THEN
	cycle : WHILE i < num DO
  	SET i = i + 1;
  	SET var = CONCAT(var, i);
  	IF i > CEILING(num / 2) THEN ITERATE cycle;
  	END IF;
  	SET var = CONCAT(var, i);
	END WHILE cycle;
	SELECT var;
  ELSE
	SELECT 'error argument value';
  END IF;
END//

CALL num_str(10)//
DELIMITER ; 
