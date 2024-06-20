<?php


$db = mysqli_connect("localhost","root","","concesionario");

if (!$db) {

    die("Error en la conexión: " . mysqli_connect_error());

}


if (isset($_GET['opcion'])) {
    $opcion = $_GET['opcion'];
}



    if ($opcion === 'mostrar_todo') {
        $query = "SELECT * FROM coches";
        $resultado = mysqli_query($db, $query);

        if (!$resultado) {
            die("Error al ejecutar la consulta: " . mysqli_error($db));
        }

        echo "<h2>Listado de Coches</h2>";
        echo "<table border='1'>";
        echo "<tr>
                <th>Matricula</th>
                <th>Tipo</th>
                <th>Marca</th>
                <th>Modelo</th>
                <th>Año</th>
                <th>Color</th>
              </tr>";

        while ($fila = mysqli_fetch_assoc($resultado)) {
            echo "<tr>";
            echo "<td>" . $fila['Matricula'] . "</td>";
            echo "<td>" . $fila['Tipo'] . "</td>";
            echo "<td>" . $fila['Marca'] . "</td>";
            echo "<td>" . $fila['Modelo'] . "</td>";
            echo "<td>" . $fila['ano'] . "</td>";
            echo "<td>" . $fila['Color'] . "</td>";
            echo "</tr>";
        }

        echo "</table>";
        mysqli_free_result($resultado);
    }

    if ($opcion === 'mostrar_matricula') {
        $matricula = mysqli_real_escape_string($db, $_GET['matricula']);
        $query = "SELECT * FROM coches where Matricula = '$matricula'";
        $resultado = mysqli_query($db, $query);
        if (!$resultado) {
            die("Error al ejecutar la consulta: " . mysqli_error($db));
        }
    
        echo "<h2>Listado de Coches</h2>";
        echo "<table border='1'>";
        echo "<tr>
                <th>Matricula</th>
                <th>Tipo</th>
                <th>Marca</th>
                <th>Modelo</th>
                <th>Año</th>
                <th>Color</th>
              </tr>";
    
        while ($fila = mysqli_fetch_assoc($resultado)) {
            echo "<tr>";
            echo "<td>" . $fila['Matricula'] . "</td>";
            echo "<td>" . $fila['Tipo'] . "</td>";
            echo "<td>" . $fila['Marca'] . "</td>";
            echo "<td>" . $fila['Modelo'] . "</td>";
            echo "<td>" . $fila['ano'] . "</td>";
            echo "<td>" . $fila['Color'] . "</td>";
            echo "</tr>";
        }
    
        echo "</table>";
        mysqli_free_result($resultado);
    }
    
?>

