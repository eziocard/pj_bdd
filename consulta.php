<?php


$db = mysqli_connect("localhost","root","","bdd");

if (!$db) {

    die("Error en la conexión: " . mysqli_connect_error());

}


if (isset($_GET['opcion'])) {
    $opcion = $_GET['opcion'];
}



    if ($opcion === 'mostrar_todo') {
        $query = "SELECT * FROM prestamo";
        $resultado = mysqli_query($db, $query);

        if (!$resultado) {
            die("Error al ejecutar la consulta: " . mysqli_error($db));
        }

        echo "<h2>Listado de Prestamos</h2>";
        echo "<table border='1'>";
        echo "<tr>
                <th>id_prestamo</th>
                <th>id_ejemplar</th>
                <th>rut</th>
                <th>fecha_prestamo</th>
                <th>fecha_devolucion</th>
                <th>fecha_prevista</th>
              </tr>";

        while ($fila = mysqli_fetch_assoc($resultado)) {
            echo "<tr>";
            echo "<td>" . $fila['id_prestamo'] . "</td>";
            echo "<td>" . $fila['id_ejemplar'] . "</td>";
            echo "<td>" . $fila['rut'] . "</td>";
            echo "<td>" . $fila['fecha_prestamo'] . "</td>";
            echo "<td>" . $fila['fecha_devolucion'] . "</td>";
            echo "<td>" . $fila['fecha_prevista'] . "</td>";
            echo "</tr>";
        }

        echo "</table>";
        mysqli_free_result($resultado);
    }

    if ($opcion === 'mostrar_prestamo') {
        $id_prestamo = mysqli_real_escape_string($db, $_GET['id_prestamo']);
        $query = "SELECT * FROM prestamo where id_prestamo = '$id_prestamo'";
        $resultado = mysqli_query($db, $query);
        if (!$resultado) {
            die("Error al ejecutar la consulta: " . mysqli_error($db));
        }
    
        echo "<h2>Listado de Prestamos</h2>";
        echo "<table border='1'>";
        echo "<tr>
                <th>id_prestamo</th>
                <th>id_ejemplar</th>
                <th>rut</th>
                <th>fecha_prestamo</th>
                <th>fecha_devolucion</th>
                <th>fecha_prevista</th>
              </tr>";

        while ($fila = mysqli_fetch_assoc($resultado)) {
            echo "<tr>";
            echo "<td>" . $fila['id_prestamo'] . "</td>";
            echo "<td>" . $fila['id_ejemplar'] . "</td>";
            echo "<td>" . $fila['rut'] . "</td>";
            echo "<td>" . $fila['fecha_prestamo'] . "</td>";
            echo "<td>" . $fila['fecha_devolucion'] . "</td>";
            echo "<td>" . $fila['fecha_prevista'] . "</td>";
            echo "</tr>";
        }

    
        echo "</table>";
        mysqli_free_result($resultado);
    }
    
?>

