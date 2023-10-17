<?php

$server = "localhost";
$user = "root";
$password = ""; //es el password del CHAMP

//conexion
$conexion = new mysqli($server, $user, $password);

//revisar conexion
if($conexion->connect_error){
    die("falló la conexión" . $conexion->connect_error);
}
?>