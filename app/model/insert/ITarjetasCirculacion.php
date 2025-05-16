<?php
  include("../../lib/controller.php");
    $FolioCirculacion = $_REQUEST['FolioCirculacion'];
    $IdPago = $_REQUEST['IdPago'];
    $NumConstancia = $_REQUEST['NumConstancia'];
    $Origen = $_REQUEST['Origen'];
    $CveVehicular = $_REQUEST['CveVehicular'];
    $Tipo = $_REQUEST['Tipo'];
    $Uso = $_REQUEST['Uso'];
    $RPA = $_REQUEST['RPA'];
    $Operacion = $_REQUEST['Operacion'];
    $PlacaAnt = $_REQUEST['PlacaAnt'];
    $OficinaExpendidora = $_REQUEST['OficinaExpendidora'];
    $Movimiento = $_REQUEST['Movimiento'];
    $Vigencia = $_REQUEST['Vigencia'];
    /*
    print("FolioCirculacion: ".$FolioCirculacion."<br>");
    print("IdPago: ".$IdPago."<br>");
    print("NumConstancia: ".$NumConstancia."<br>");
    print("Origen: ".$Origen."<br>");
    print("CveVehicular: ".$CveVehicular."<br>");
    print("Tipo: ".$Tipo."<br>");
    print("Uso: ".$Uso."<br>");
    print("RPA: ".$RPA."<br>");
    print("Operacion: ".$Operacion."<br>");
    print("PlacaAnt: ".$PlacaAnt."<br>");
    print("OficinaExpendidora: ".$OficinaExpendidora."<br>");
    print("Movimiento: ".$Movimiento."<br>");
    print("Vigencia: ".$Vigencia."<br>");
    */
    $SQL = "INSERT INTO tarjetas_circulacion VALUES('$FolioCirculacion','$IdPago','$NumConstancia','$Origen','$CveVehicular','$Tipo','$Uso','$RPA','$Operacion','$PlacaAnt','$OficinaExpendidora','$Movimiento','$Vigencia');";
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
