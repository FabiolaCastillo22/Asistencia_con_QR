<?php
if ($_SERVER["REQUEST_METHOD"]=="POST")
    require_once 'conexion.php';

    $ID =$_POST["ID"];
    $nombre=$_POST["nombre"];
    $date=$_POST["fecha"];

    $dateOnly = date("Y-m-d", strtotime($date));

    $ass = $conexion->prepare("SELECT * FROM asistencia WHERE ID = ? and nombreCompleto =? and DATE(Fecha)=?");
    $ass->bind_param("sss", $ID, $nombre, $dateOnly);
    $ass->execute();
    $result = $ass->get_result();

    if ($result->num_rows > 0) {
        echo json_encode(["success" => false]);
    } else {
        echo json_encode(["success" => true]);
        
        $query= "INSERT INTO asistencia
                (ID, nombreCompleto, Fecha)
            VALUES 
                ('".$ID."', '".$nombre."', '".$date."')";
    
        if ($conexion->query($query) === TRUE) {
            //echo "Usuario insertado exitosamente";
        } else {
            echo "Error: " . $query . "<br>" . $conexion->error;
        }  
    
    }

    $ass->close();
    $conexion->close();

?>
