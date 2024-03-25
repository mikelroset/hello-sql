/*
TRANSACTIONS
Lección 18.5: https://youtu.be/OuJerKzV5T0?t=20501
*/

/*
Una transacción en SQL es un conjunto de operaciones SQL que se ejecutan como una unidad atómica, es decir, todas las operaciones deben completarse correctamente o ninguna de ellas tendrá efecto. Esto garantiza la consistencia y la integridad de los datos en la base de datos, evitando situaciones en las que parte de una operación se completa y la otra parte falla, dejando los datos en un estado inconsistente.

El concepto de transacción se basa en el principio de ACID, que significa Atomicidad, Consistencia, Aislamiento y Durabilidad.

Atomicidad: Todas las operaciones en una transacción se consideran una sola unidad, lo que significa que o bien todas las operaciones se realizan con éxito y se confirman, o ninguna de ellas se lleva a cabo en absoluto.

Consistencia: Una transacción lleva la base de datos de un estado consistente a otro estado consistente. Después de que una transacción se complete con éxito, la integridad de los datos debe mantenerse.

Aislamiento: Las operaciones en una transacción son invisibles para otras transacciones hasta que se completen. Esto garantiza que una transacción no vea los cambios realizados por otras transacciones hasta que estén completas.

Durabilidad: Después de que una transacción se complete correctamente, los cambios realizados por esa transacción deben ser permanentes y no deben revertirse, incluso en caso de fallo del sistema o un reinicio de la base de datos.

Ejemplo:

START TRANSACTION;

-- Verificar si hay suficiente saldo en la cuenta de origen
SELECT saldo INTO @saldo_origen FROM cuenta_bancaria WHERE id_cuenta = id_cuenta_origen;

IF @saldo_origen >= cantidad_transferida THEN
    -- Deduct the money from the sender's account
    UPDATE cuenta_bancaria
    SET saldo = saldo - cantidad_transferida
    WHERE id_cuenta = id_cuenta_origen;

    -- Add the money to the receiver's account
    UPDATE cuenta_bancaria
    SET saldo = saldo + cantidad_transferida
    WHERE id_cuenta = id_cuenta_destino;

    -- Register the transaction
    INSERT INTO transacciones (id_cuenta_origen, id_cuenta_destino, cantidad_transferida, fecha)
    VALUES (id_cuenta_origen, id_cuenta_destino, cantidad_transferida, NOW());

    COMMIT;
ELSE
    -- Rollback the transaction if there is not enough balance in the sender's account
    ROLLBACK;
END IF;
*/


-- Inicia una nueva transacción. Desde este punto, todas las modificaciones realizadas en la
-- base de datos son temporales y solo son visibles dentro de esta transacción
START TRANSACTION

-- Finaliza una transacción con éxito. Cuando se ejecuta, todos los cambios realizados en la
-- base de datos durante la transacción actual se hacen permanentes y visibles
COMMIT

-- Deshace las operaciones realizadas en una transacción, revirtiendo la base de datos
-- al estado en que se encontraba antes de iniciar la transacción
ROLLBACK