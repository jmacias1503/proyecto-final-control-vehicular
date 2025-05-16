<?php
  include("../../lib/controller.php");
    $idConductor = $_POST['idConductor'];

    $SQL = "DELETE FROM conductores WHERE idConductor = '$idConductor'";
    //print($SQL);

    $conn = connect(); // Create connection

    $ResultSet = execute($conn, $SQL); // Execute the query
    $exit = close($conn); // Close the connection
    if(mysqli_affected_rows($ResultSet) == 0){
        print("Ninguna fila eliminada"); //Process the result
    }
    else{
        print("Fila eliminada correctamente");
    }
?>
