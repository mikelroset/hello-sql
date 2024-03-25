/*
CONCURRENCIA Y DEADLOCK
Lección 18.6: https://youtu.be/OuJerKzV5T0?si=E05ylXlPBvhXHgZl&t=20700
*/

/*
En MySQL, la concurrencia se refiere a la capacidad de múltiples usuarios para acceder y modificar simultáneamente los datos en una base de datos sin interferir entre sí. La concurrencia es esencial para mejorar el rendimiento y la eficiencia de una base de datos al permitir que múltiples usuarios realicen operaciones concurrentemente. Sin embargo, la concurrencia también puede dar lugar a problemas como los deadlocks.

Concurrencia: En MySQL, la concurrencia se logra mediante el uso de bloqueos y mecanismos de control de acceso a los datos. MySQL utiliza bloqueos de diferentes niveles de granularidad, como bloqueos de fila, bloqueos de tabla y bloqueos de nivel de página, para garantizar la integridad de los datos y evitar conflictos entre las operaciones concurrentes. Los bloqueos se adquieren cuando una transacción necesita acceder a un recurso y se liberan cuando la transacción completa su trabajo.

Deadlock: Un deadlock es una situación en la que dos o más transacciones están esperando mutuamente recursos que la otra tiene bloqueados, lo que resulta en un estancamiento en el sistema donde ninguna transacción puede continuar. En otras palabras, cada transacción está esperando que la otra libere un recurso que necesita para continuar, lo que resulta en un bucle infinito de espera.

Los deadlocks pueden ocurrir debido a la forma en que las transacciones adquieren y liberan bloqueos en una base de datos. Por ejemplo, considera dos transacciones A y B:

Transacción A bloquea recurso X y espera por recurso Y.
Transacción B bloquea recurso Y y espera por recurso X.
En esta situación, ambas transacciones están esperando que la otra libere el recurso que necesita para continuar. Como resultado, se produce un deadlock y ninguna de las transacciones puede avanzar.

Para evitar los deadlocks, MySQL utiliza un algoritmo de detección de deadlock que identifica y resuelve los deadlocks automáticamente. Cuando se detecta un deadlock, MySQL elige una transacción para abortar y libera los recursos bloqueados para permitir que las demás transacciones continúen. Sin embargo, es importante diseñar cuidadosamente las aplicaciones y transacciones para minimizar la posibilidad de deadlocks y garantizar un rendimiento óptimo del sistema. Esto puede implicar el uso de bloqueos adecuados, el diseño de transacciones cortas y la gestión adecuada de errores.
*/