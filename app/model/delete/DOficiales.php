<?php
  include("../../lib/controller.php");
    $id = $_REQUEST['id'];

    $SQL = "DELETE FROM oficiales WHERE id = '$id'";
    //print($SQL); 
    //Envio al sistema manejador de base de datos
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
