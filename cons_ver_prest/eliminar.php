<?php
$db = mysqli_connect("localhost", "root", "", "bdd");

if (!$db) {
    die("Error en la conexión: " . mysqli_connect_error());
}

$id_prestamo = mysqli_real_escape_string($db, $_POST['id_prestamo']);

$query = "DELETE FROM prestamo WHERE id_prestamo = '$id_prestamo'";
$resultado = mysqli_query($db, $query);

if (!$resultado) {
    die("Error al ejecutar la consulta: " . mysqli_error($db));
} else {
    echo "<h2>Prestamo Eliminado</h2>";
}

mysqli_close($db);
?>
