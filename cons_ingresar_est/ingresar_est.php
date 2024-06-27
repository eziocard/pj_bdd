<?php
$db = mysqli_connect("localhost","root","","bdd");

if (!$db) {
    die("Error en la conexión: " . mysqli_connect_error());
}

$rut = mysqli_real_escape_string($db, $_POST['rut']);
$nombre = mysqli_real_escape_string($db, $_POST['nombre']);
$apellido = mysqli_real_escape_string($db, $_POST['apellido']);
$facultad = mysqli_real_escape_string($db, $_POST['facultad']);
$carrera = mysqli_real_escape_string($db, $_POST['carrera']);

$sql = "call crearEstudiante('$rut', '$nombre', '$apellido', '$facultad', '$carrera')";

if (mysqli_query($db, $sql)) {
    echo "Estudiante agregado correctamente.";
} else {
    echo "Error al llamar al procedimiento almacenado: " . mysqli_error($db);
}

mysqli_close($db);
?>