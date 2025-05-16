<?php
  include("../../lib/controller.php");
    $IdSerie = $_REQUEST['IdSerie'];

    $SQL = "DELETE FROM vehiculos WHERE IdSerie = '$IdSerie'";

    //print($SQL);
    $conn = connect(); // Create connection

    $ResultSet = execute($conn, $SQL); // Execute the query
    $exit = close($conn); // Close the connection
    if(mysqli_affected_rows($ResultSet) == 0){
        print("Ninguna fila afectada"); //Process the result
    }
    else{
        print("Fila eliminada correctamente");
    }
?>
