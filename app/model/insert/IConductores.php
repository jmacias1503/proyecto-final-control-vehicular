<?php
  include("../../controller.php");
    $idConductor = $_POST['idConductor'];
    $CURP = $_POST['CURP'];
    /*
    print("IdConductor: ".$idConductor."<br>");
    print("CURP: ".$CURP."<br>");*/

    $SQL = "INSERT INTO conductores VALUES('$idConductor','$CURP');";
    //print($SQL);

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
