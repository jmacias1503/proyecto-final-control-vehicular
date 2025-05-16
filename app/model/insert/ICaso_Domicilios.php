<?php
  include("../../lib/controller.php");
    $compuesta = $_POST['compuesta'];
    $CURP = $_POST['CURP'];
    $IdDomicilio = $_POST['IdDomicilio'];

    $SQL = "INSERT INTO caso_domicilios VALUES('$compuesta','$CURP','$IdDomicilio');";

    $conn = connect(); // Create connection

    $ResultSet = execute($conn, $SQL); // Execute the query
    $exit = close($conn); // Close the connection
    if($ResultSet == 1){
        print("Actualizado correctamente"); //Process the result
    }
    else{
        print("Error al actualizar".$ResultSet->error);
    }
?>
