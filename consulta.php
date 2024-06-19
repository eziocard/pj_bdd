<?php

// Establecer conexión con la base de datos

$db = mysqli_connect("localhost", "root", "200320", "Biblioteca");

// Verificar la conexión

if (!$db) {

    die("Error en la conexión: " . mysqli_connect_error());

}

// Consulta SQL para obtener los clientes de Temuco

$query = "SELECT * FROM libro";

$resultado = mysqli_query($db, $query);
echo $resultado;

// Verificar si la consulta fue exitosa

if (!$resultado) {

    die("Error al ejecutar la consulta: " . mysqli_error($db));

}

// Mostrar los datos en una tabla HTML

$db = mysqli_connect("localhost", "root", "200320", "Biblioteca");

// Verificar la conexión

if (!$db) {

    die("Error en la conexión: " . mysqli_connect_error());

}

// Consulta SQL para obtener los clientes de Temuco

$query = "SELECT * FROM Clientes WHERE ciudad = 'Temuco'";

$resultado = mysqli_query($db, $query);

// Verificar si la consulta fue exitosa

if (!$resultado) {

    die("Error al ejecutar la consulta: " . mysqli_error($db));

}

// Liberar el resultado

mysqli_free_result($resultado);

// Cerrar la conexión a la base de datos

mysqli_close($db);
