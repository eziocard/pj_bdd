<?php
$db = mysqli_connect("localhost","root","","bdd");

$titulo = mysqli_real_escape_string($db, $_POST['titulo']);

if (!$db) {
    die("Error en la conexión: " . mysqli_connect_error());
}

$query = "SELECT * FROM ejemplar t1 inner join libro t2 on t1.isbn = t2.isbn where t2.titulo like '$titulo%'";
$resultado = mysqli_query($db, $query);

if (!$resultado) {
    die("Error al ejecutar la consulta: " . mysqli_error($db));
}

echo "<h2>Datos del Ejemplar</h2>";
echo "<table border='1'>";
echo "<tr>
        <th>id_ejemplar</th>
        <th>isbn</th>
        <th>titulo</th>
        <th>precio</th>
        <th>estado</th>
      </tr>";

while ($fila = mysqli_fetch_assoc($resultado)) {
    echo "<tr>";
    echo "<td>" . $fila['id_ejemplar'] . "</td>";
    echo "<td>" . $fila['isbn'] . "</td>";
    echo "<td>" . $fila['titulo'] . "</td>";
    echo "<td>" . $fila['precio'] . "</td>";
    echo "<td>" . $fila['estado'] . "</td>";
  
    echo "</tr>";
}

echo "</table>";
mysqli_free_result($resultado);



?>