<?php
$db = mysqli_connect("localhost","root","","bdd");

$rut = mysqli_real_escape_string($db, $_POST['rut']);
$fecha = $_POST['fecha'];
$id_ejemplar = mysqli_real_escape_string($db, $_POST['id_ejemplar']);

$sql = "call crearPrestamo('$rut','$fecha','$id_ejemplar')";

try{
    if (mysqli_query($db, $sql)) {
        echo "El prestamo se agregado correctamente.";
    } else {
        echo "Error al llamar al procedimiento almacenado.";
    }
} catch (mysqli_sql_exception $e) {
    if ($e->getCode() == 1062) {
        echo "Error: El prestamo ya esta registrado";
    } else {
        echo "Error SQL: " . $e->getMessage();
    }
}
mysqli_close($db);


?>