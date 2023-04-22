<?php
//Cargar Candidatos por medio de un JSON.
$conexion = mysqli_connect('localhost', 'root', '', 'elecciones');

if ($conexion->connect_error) {

    die("Error de conexión: " . $conexion->connect_error);

}

$sql = "SELECT * FROM candidatos";
$resultado = $conexion->query($sql);
$datos = array();

if ($resultado->num_rows > 0) {

    while ($fila = $resultado->fetch_assoc()) {
        $datos[] = array("id_candidato" => $fila["id_candidato"], "nombre" => $fila["nombre"]);
    }

}

$conexion->close();
echo json_encode($datos);

?>