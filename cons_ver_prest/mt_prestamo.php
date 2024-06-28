<?php
$db = mysqli_connect("localhost","root","","bdd");

if (!$db) {
    die("Error en la conexión: " . mysqli_connect_error());
}

$query = "SELECT t1.nombre,t1.rut, t1.facultad, t1.carrera, t2.id_prestamo, t2.id_ejemplar,t3.estado 
FROM estudiante t1
INNER JOIN prestamo t2 ON t1.rut = t2.rut 
INNER JOIN ejemplar t3 ON t2.id_ejemplar = t3.id_ejemplar 
WHERE t3.estado = 'prestado' order by t1.nombre ASC";

$resultado = mysqli_query($db, $query);

if (!$resultado) {
    die("Error al ejecutar la consulta: " . mysqli_error($db));
}

echo "<h2>Lista de ejemplares disponibles</h2>";
echo "<table border='1'>";
echo "<tr>
        <th>Rut</th>
        <th>Nombre</th>
        <th>Facultad</th>
        <th>Carrera</th>
        <th>Id Prestamo</th>
        <th>Id Ejemplar</th>
        <th>Estado</th>
      </tr>";

while ($fila = mysqli_fetch_assoc($resultado)) {
    echo "<tr>";
    echo "<td>" . $fila['rut'] . "</td>";
    echo "<td>" . $fila['nombre'] . "</td>";
    echo "<td>" . $fila['facultad'] . "</td>";
    echo "<td>" . $fila['carrera'] . "</td>";
    echo "<td>" . $fila['id_prestamo'] . "</td>";
    echo "<td>" . $fila['id_ejemplar'] . "</td>";
    echo "<td>" . $fila['estado'] . "</td>";
    echo "</tr>";
}

echo "</table>";
mysqli_free_result($resultado);



?>