/*
DISTINCT
Lección 9.1: https://youtu.be/OuJerKzV5T0?t=6089
*/

/*
Como experto en SQL, puedo explicarte la diferencia entre utilizar DISTINCT y GROUP BY en consultas.

1. **DISTINCT**:
   - La cláusula DISTINCT se utiliza para eliminar duplicados de un conjunto de resultados.
   - Cuando se especifica DISTINCT en una consulta SELECT, se asegura de que cada fila devuelta sea única en función de los valores de las columnas seleccionadas.
   - No puedes utilizar funciones de agregación (como SUM(), COUNT(), AVG(), etc.) con DISTINCT. Se aplica a todas las columnas seleccionadas en la consulta.

   Ejemplo:

   ```sql
   SELECT DISTINCT columna1, columna2 FROM tabla;
   ```

2. **GROUP BY**:
   - La cláusula GROUP BY se utiliza para agrupar filas que tienen los mismos valores en una o más columnas específicas.
   - Es comúnmente utilizado junto con funciones de agregación (SUM(), COUNT(), AVG(), etc.) para realizar cálculos en grupos de datos.
   - Al utilizar GROUP BY, especificas qué columnas deben agruparse y, por lo general, estas columnas también se incluyen en la lista SELECT.
   - GROUP BY también permite usar funciones de agregación en las columnas no agrupadas.

   Ejemplo:

   ```sql
   SELECT columna1, COUNT(*) FROM tabla GROUP BY columna1;
   ```

En resumen, DISTINCT se utiliza para eliminar duplicados en el conjunto de resultados completo, mientras que GROUP BY se utiliza para agrupar filas con valores similares en una o más columnas y realizar operaciones de agregación en esos grupos.
*/

-- Obtiene todos los datos distintos entre sí de la tabla "users"
SELECT DISTINCT * FROM users;

-- Obtiene todos los valores distintos referentes al atributo edad de la tabla "users"
SELECT DISTINCT age FROM users;