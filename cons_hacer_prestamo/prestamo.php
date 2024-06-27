<?php
$db = mysqli_connect("localhost","root","","bdd");

$rut = mysqli_real_escape_string($db, $_POST['rut']);
$fecha = $_POST['fecha'];


?>