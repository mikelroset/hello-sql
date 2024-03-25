/*
CONNECTORS
Lección 19.1: https://youtu.be/OuJerKzV5T0?t=20876
Lección 19.2: https://youtu.be/OuJerKzV5T0?t=21149

Ejemplo de conexión asíncrona desde Javascript a una base de datos local
Se ejemplifica cómo evitar SQL INJECTION

En este código, la función printUser ahora devuelve una promesa que se resuelve con los resultados de la consulta si la conexión y la consulta son exitosas, o se rechaza con un mensaje de error si hay algún problema. Luego, puedes manejar el resultado o el error usando el método then y catch respectivamente, proporcionando un enfoque asíncrono para manejar las operaciones de base de datos.

Además, el código utiliza consultas parametrizadas para evitar la vulnerabilidad de inyección de SQL. Utiliza marcadores de posición (?) en la consulta SQL y pasa los valores de los parámetros de forma segura a través de un arreglo como segundo argumento de la función query de la conexión a la base de datos. Este enfoque ayuda a prevenir la inyección de SQL.
*/

/*
const mysql = require('mysql');

function printUser(user) {
    const config = {
        host: '127.0.0.1',
        port: '3306',
        database: 'hello_mysql',
        user: 'root',
        password: 'root1234'
    };

    const connection = mysql.createConnection(config);

    return new Promise((resolve, reject) => {
        connection.connect((err) => {
            if (err) {
                reject('Error al conectar a la base de datos: ' + err);
                return;
            }

            console.log('Conexión establecida correctamente.');

            const query = 'SELECT * FROM users WHERE name = ?;';
            console.log(query);

            connection.query(query, [user], (err, result) => {
                if (err) {
                    reject('Error al ejecutar la consulta: ' + err);
                    return;
                }

                resolve(result);

                connection.end((err) => {
                    if (err) {
                        console.error('Error al cerrar la conexión:', err);
                        return;
                    }
                    console.log('Conexión cerrada correctamente.');
                });
            });
        });
    });
}

printUser('Brais')
    .then((result) => {
        result.forEach((row) => {
            console.log(row);
        });
    })
    .catch((error) => {
        console.error(error);
    });
*/