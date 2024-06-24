<?php
$db = mysqli_connect("localhost", "root", "", "bdd");

if (!$db) {
    die("Error en la conexión: " . mysqli_connect_error());
}

$rut = $_GET['rut'];



$query = "SELECT t1.rut, t1.nombre, t1.facultad, t1.carrera, t2.id_prestamo, t3.id_ejemplar 
FROM cliente t1 
INNER JOIN prestamo t2 ON t1.rut = t2.rut 
INNER JOIN ejemplar t3 ON t2.id_ejemplar = t3.id_ejemplar 
WHERE t1.rut = '$rut'";

$resultado = mysqli_query($db, $query);

if (!$resultado) {
    die("Error al ejecutar la consulta: " . mysqli_error($db));
}

$data = "";

if (mysqli_num_rows($resultado) > 0) {
    $data .= "<h2>Datos del Cliente</h2>";
    $data .= "<table border='1'>";
    $data .= "<tr>
                <th>Rut</th>
                <th>Nombre</th>
                <th>Facultad</th>
                <th>Carrera</th>
                <th>Id_Prestamo</th>
                <th>Id_Ejemplar</th>
            </tr>";

    while ($fila = mysqli_fetch_assoc($resultado)) {
        $data .= "<tr>";
        $data .= "<td>" . $fila['rut'] . "</td>";
        $data .= "<td>" . $fila['nombre'] . "</td>";
        $data .= "<td>" . $fila['facultad'] . "</td>";
        $data .= "<td>" . $fila['carrera'] . "</td>";
        $data .= "<td>" . $fila['id_prestamo'] . "</td>";
        $data .= "<td>" . $fila['id_ejemplar'] . "</td>";
        $data .= "</tr>";
    }

    $data .= "</table>";
} else {
    $data = "<h2>El Cliente no ha hecho ningun Prestamo o no a sido ingresado en la base de datos.</h2>";
}

echo $data;

mysqli_free_result($resultado);
mysqli_close($db);