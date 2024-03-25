/*
INDEX
Lección 18.1: https://youtu.be/OuJerKzV5T0?t=18219
*/

/*
Son como el punto de un libro, nos permite acceder a registros de manera más rápida, como contrapartidoa, la base de datos pesará más y las escriutras serán más lentas, por eso no se crean índices de todos los campos de una tabla, solo de aquellos que utilizaremos más a menudo para hacer búsquedas.

Ejemplo:
CREATE INDEX idx_apellido ON empleados(apellido);

SELECT id, nombre, apellido, salario
FROM empleados
WHERE apellido = 'Smith';

En esta consulta, la base de datos utilizará el índice idx_apellido para buscar rápidamente todas las filas en la tabla empleados donde el apellido sea igual a 'Smith'. En lugar de tener que escanear toda la tabla, la base de datos puede utilizar el índice para localizar rápidamente las filas que cumplen con el criterio de búsqueda.

*/

-- Crea un índice llamado "idx_name" en la tabla "users" asociado al campo "name"
CREATE INDEX idx_name ON users(name);

-- Crea un índice único llamado "idx_name" en la tabla "users" asociado al campo "name"
CREATE UNIQUE INDEX idx_name ON users(name);

-- Crea un índice llamado "idx_name_surname" en la tabla "users" asociado a los campos "name" y "surname"
CREATE UNIQUE INDEX idx_name_surname ON users(name, surname);

-- Elimina el índice llamado "idx_name"
DROP INDEX idx_name ON users;