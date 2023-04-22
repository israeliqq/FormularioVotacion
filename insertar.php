<?php

$conexion = mysqli_connect('localhost', 'root', '', 'elecciones');

$nombre     = $_POST['nombre'];
$alias      = $_POST['alias'];
$rut        = $_POST['rut'];
$email      = $_POST['email'];
$region     = $_POST['region'];
$comuna     = $_POST['comuna'];
$candidato  = $_POST['candidato'];


//Asignar dato por defecto de checkbox
if (isset($_POST['web'])) {
  $web   = $_POST['web'];
} else {
  $web = "0";
}

if (isset($_POST['tv'])) {
  $tv    = $_POST['tv'];
} else {
  $tv = "0";
}

if (isset($_POST['rrss'])) {
  $rrss  = $_POST['rrss'];
} else {
  $rrss = "0";
}

if (isset($_POST['amigo'])) {
  $amigo = $_POST['amigo'];
} else {
  $amigo = "0";
}

// Realizar la consulta en la base de datos
$consulta = "SELECT * FROM votos WHERE rut = '$rut'";
$resultado = mysqli_query($conexion, $consulta);

// Verificar si el rut existe
if (mysqli_num_rows($resultado) > 0) {
  //Bandera para rut existente
  echo "rut existente";
} else {

  $consulta = "INSERT INTO votos (id_voto, nombre ,alias ,rut ,email ,region ,comuna ,fk_candidato ,web ,tv ,rrss ,amigo)
VALUES (NULL,'" . $nombre . "', '" . $alias . "', '" . $rut . "', '" . $email . "', '" . $region . "','" . $comuna . "', '" . $candidato . "', '" . $web . "',  '" . $tv . "', '" . $rrss . "', '" . $amigo . "');";
  mysqli_query($conexion, $consulta);
}



mysqli_close($conexion);
