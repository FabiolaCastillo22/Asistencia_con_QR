<?php
if ($_SERVER["REQUEST_METHOD"]=="POST")
    require_once 'conexion.php';
    $ID =$_POST["ID"];
    $nombre=$_POST["nombre"];
    $apellidos=$_POST["apellidos"];
    $pass=$_POST["pass"];

    $query= "INSERT INTO registro
                (ID, nombre, apellidos, pass)
            VALUES 
                ('".$ID."', '".$nombre."', '".$apellidos."', '".$pass."')";
    
    if ($conexion->query($query) === TRUE) {
        echo "Usuario insertado exitosamente";
    } else {
        echo "Error: " . $query . "<br>" . $conexion->error;
    }           

?>
