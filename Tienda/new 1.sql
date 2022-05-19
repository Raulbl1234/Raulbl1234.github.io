DROP DATABASE IF EXISTS prueba;
CREATE DATABASE prueba;
USE prueba;

delimiter //
CREATE PROCEDURE psuma(IN v1 int,in v2 int,out resolt int)

BEGIN
Set resolt=v1+v2;

END//
delimiter ;
CALL psuma(4,2,@resolt);
Select @resolt;
SET GLOBAL log-bin-dust.fuction.creator= 1;

delimiter //

CREATE PROCEDURE psuma2(inout v1 int, inout v2 int, out resultado int)

BEGIN
Set resultado=v1+v2;

END//

delimiter;
call psuma2 (12,213,@resultado);
Select @resultado;


