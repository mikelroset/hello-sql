/*
STORED PROCEDURES
Lección 18.4: https://youtu.be/OuJerKzV5T0?t=20033
*/
/*
Es como una query que guardamos en favoritos. Los parámetros que le pasemos a la stored procedure no puede llamarse igual que un campo de la tabla.

Ejemplo:

DELIMITER //

CREATE PROCEDURE nombre_procedimiento (
    IN parametro1 tipo_de_dato,
    IN parametro2 tipo_de_dato
)
BEGIN
    -- Cuerpo del procedimiento almacenado aquí
    -- Puedes utilizar los parámetros como variables en las instrucciones SQL dentro del procedimiento.
    -- Ejemplo:
    SELECT * FROM tabla WHERE columna1 = parametro1 AND columna2 = parametro2;
END //

DELIMITER ;
*/

-- Crea un procedimiento almacenado llamado "p_all_users" que obtiene todos los datos de "users"
DELIMITER //
CREATE PROCEDURE p_all_users()
BEGIN
	SELECT * FROM users;
END//

-- Invoca al procedimiento almacenado llamado "p_all_users"
CALL p_all_users;

-- Crea un procedimiento almacenado llamado "p_age_users" parametrizado para
-- obtener usuarios con edad variable
DELIMITER //
CREATE PROCEDURE p_age_users(IN age_param int)
BEGIN
	SELECT * FROM users WHERE age = age_param;
END//

-- Invoca al procedimiento almacenado llamado "p_age_users" con un parámetro de valor 30
CALL p_age_users(30);

-- Elimina el procedimiento almacenado llamado "p_age_users"
DROP PROCEDURE p_age_users;