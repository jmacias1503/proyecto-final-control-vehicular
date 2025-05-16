<?php
  include("../../lib/controller.php");
    $compuesta = $_POST['compuesta'];
    $SQL = "DELETE FROM Caso_Domicilios WHERE compuesta = '$compuesta'";

    $conn = connect(); // Create connection

    $ResultSet = execute($conn, $SQL); // Execute the query
    $exit = close($conn); // Close the connection
    if(mysqli_affected_rows($ResultSet == 0)){
        print("Ninguna fila eliminada"); //Process the result
    }
    else{
        print("Fila eliminada correctamente");
    }
?>
