<?php
  include("../../lib/controller.php");
    $FolioCirculacion = $_REQUEST['FolioCirculacion'];

    $SQL = "DELETE FROM TarjetasCirculacion WHERE FolioCirculacion = '$FolioCirculacion'";
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
