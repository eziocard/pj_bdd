<?php
$db = mysqli_connect("localhost", "root", "", "bdd");

if (!$db) {
    die("Error en la conexión: " . mysqli_connect_error());
}

$rut = mysqli_real_escape_string($db, $_POST['rut']);
$fecha = $_POST['fecha'];
$id_ejemplar = mysqli_real_escape_string($db, $_POST['id_ejemplar']);

$sql_verificar_estado = "SELECT estado FROM ejemplar WHERE id_ejemplar = '$id_ejemplar'";
$resultado = mysqli_query($db, $sql_verificar_estado);

if ($resultado) {
    $fila = mysqli_fetch_assoc($resultado);
    $estado_ejemplar = $fila['estado'];

    if ($estado_ejemplar == 'Prestado') {
        echo "Error: El ejemplar ya está prestado. No se puede registrar el préstamo.";
    } else {
        $sql_atrapar_rut = "SELECT * from estudiante where rut = '$rut'";
        $resultado_atrapar_rut = mysqli_query($db, $sql_atrapar_rut);

        if (mysqli_num_rows($resultado_atrapar_rut) == 0) {
            echo "El rut no existe en la base de datos.";
        } else {
            $sql = "CALL crearPrestamo('$rut', '$fecha', '$id_ejemplar')";

            if (mysqli_query($db, $sql)) {
                echo "El préstamo se registró correctamente y el estado del ejemplar se actualizó a 'Prestado'.";
            } else {
                echo "Error al registrar el préstamo: " . mysqli_error($db);
            }
        }
    }
} else {
    echo "Error al verificar el estado del ejemplar: " . mysqli_error($db);
}

mysqli_close($db);
?>
