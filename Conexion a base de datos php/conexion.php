<?php
    $host_name= 'localhost';
    $database= 'proyecto_moviles';
    $user_name= 'root';
    $password = '';

    $conexion = new mysqli ($host_name, $user_name, $password, $database);

    if ($conexion->connect_error){
        die("Error de conexion: ".$conexion->connect_error);
    }else{
        #echo "Me conecte a la base de datos";
    }
?>