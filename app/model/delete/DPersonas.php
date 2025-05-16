<?php
include("../../lib/controller.php");
    $CURP = $_REQUEST['CURP'];

    $SQL = "DELETE FROM personas WHERE CURP = '$CURP'"; 
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
