<?php 
    require_once 'conexion.php';
    $UserId = $_POST['ID'];
    $Password= $_POST['pass'];

    $stmt = $conexion->prepare("SELECT * FROM registro WHERE ID = ? AND pass = ?");
    $stmt->bind_param("ss", $UserId, $Password);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        echo json_encode(["success" => true]);
    } else {
        echo json_encode(["success" => false]);
    }

    $stmt->close();
    $conexion->close();
?>
