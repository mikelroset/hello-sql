/*
GROUP BY
Lección 10.11: https://youtu.be/OuJerKzV5T0?t=8960
*/

-- Agrupa los resultados por edad diferente
SELECT MAX(age) FROM users GROUP BY age

/*
En el caso específico en el que estás agrupando por un campo numérico y luego aplicas MAX() a ese mismo campo, puede parecer redundante en un primer vistazo. En esencia, estás obteniendo el máximo de un conjunto de valores que ya se han agrupado y son todos iguales.

Esta situación puede surgir en consultas SQL, y aunque parezca redundante, sigue siendo válido según la sintaxis del lenguaje SQL y podría tener aplicaciones específicas. Aunque el resultado será el mismo valor que el valor agrupado, hay casos en los que esta estructura de consulta puede ser útil:

Consistencia del código: A veces, en un código más complejo, puede ser más fácil y claro para el lector de la consulta comprender que se está obteniendo el máximo valor de un campo que ya se ha agrupado, incluso si los valores dentro del grupo son los mismos.

Refactorización futura: En el futuro, la consulta podría modificarse para agregar más campos a la selección o incluir otras funciones de agregación. Mantener la consistencia en la estructura de la consulta puede hacer que futuras modificaciones sean más simples y menos propensas a errores.

Generación de consultas dinámicas: En algunas situaciones, las consultas SQL pueden generarse de manera dinámica, donde partes de la consulta se construyen automáticamente. En estos casos, mantener la misma estructura de consulta puede simplificar la lógica de generación.

Aunque en una situación simple puede parecer redundante, en un contexto más amplio y complejo, esta estructura de consulta puede tener sentido en términos de claridad y mantenibilidad del código. Sin embargo, en muchos casos, se podría considerar una buena práctica evitar la redundancia siempre que sea posible para mantener la legibilidad y la eficiencia de la consulta.
*/

-- Agrupa los resultados por edad diferente y cuenta cuantos registros existen de cada una
SELECT COUNT(age), age FROM users GROUP BY age

-- Agrupa los resultados por edad diferente, cuenta cuantos registros existen de cada una y los ordena
SELECT COUNT(age), age FROM users GROUP BY age ORDER BY age ASC

-- Agrupa los resultados por edad diferente mayor de 15, cuenta cuantos registros existen de cada una y los ordena
SELECT COUNT(age), age FROM users WHERE age > 15 GROUP BY age ORDER BY age ASC