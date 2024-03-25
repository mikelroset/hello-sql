/*
VIEWS
Lección 18.3: https://youtu.be/OuJerKzV5T0?t=19663
*/
/*
Una view es una representación virtual de una o más tablas. Sería el resultado de una consulta mostrado en formato tabla. Se utilizan parar simplificar consultas complejas, ocultar complejidad o revisar datos.

Cuando insertan datos a una tabla que es utilizada por una vista, la vista se regenera y esto tiene una penalización, por eso es importante saber cuándo vala la pena y cuándo no.
*/
-- Crea unaa vista llamada "v_adult_users" con los nombres y edades de usuarios de la table "users"
-- que tienen una edad igual o mayor a 18 años.

CREATE VIEW v_adult_users AS
SELECT name, age
FROM users
WHERE age >= 18;

SELECT * FROM v_adult_users;

-- Elimina la vista llamada "v_adult_users"
DROP VIEW v_adult_users;