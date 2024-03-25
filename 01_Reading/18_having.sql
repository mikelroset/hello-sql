/*
HAVING
Lección 10.12: https://youtu.be/OuJerKzV5T0?t=9265
*/

/*
Tanto WHERE como HAVING son cláusulas utilizadas en consultas SQL para filtrar datos, pero se aplican en diferentes momentos del proceso de consulta y tienen diferentes alcances.

WHERE:
La cláusula WHERE se utiliza para filtrar filas antes de que se realice cualquier agrupación o agregación.
Se aplica a las filas de la tabla base antes de que se realice cualquier operación de agrupación definida por GROUP BY.
Se utiliza comúnmente para filtrar datos basados en condiciones en columnas individuales.
No se pueden utilizar columnas agregadas (resultantes de funciones de agregación) en la cláusula WHERE.

Ejemplo:

    SELECT columna1, columna2
    FROM tabla
    WHERE columna1 = 'valor';

HAVING:
La cláusula HAVING se utiliza para filtrar grupos de filas basados en condiciones de agregación después de que se hayan realizado operaciones de agrupación definidas por GROUP BY.
Se aplica después de que se hayan formado los grupos utilizando GROUP BY.
Se utiliza para filtrar resultados basados en condiciones que implican columnas agregadas, como SUM, COUNT, AVG, etc.
No se puede usar fuera de una consulta que incluya una cláusula GROUP BY.

Ejemplo:
    SELECT COUNT(age)
    FROM tabla
    GROUP BY age
    HAVING COUNT(age) > 3;

En resumen, WHERE se utiliza para filtrar filas antes de la agrupación, mientras que HAVING se utiliza para filtrar grupos después de la agrupación y se aplica a valores agregados. La elección entre ambas depende de si estás filtrando datos individuales o agregados en tu consulta.
*/

-- Cuenta cuantas filas contienen un dato no nulo en el campo edad de la tabla "users" mayor que 3
SELECT COUNT(age) FROM users HAVING COUNT(age) > 3