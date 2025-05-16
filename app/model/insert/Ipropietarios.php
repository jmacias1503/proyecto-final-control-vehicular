<?php
  include("../../controller.php");
  $IdPropietario = $_GET['IdPropietario'];
  $CURP = $_GET['CURP'];

  $SQL = "INSERT INTO propietarios(IdPropietario, CURP) VALUES('$IdPropietario', '$CURP');";
  $conn = connect();

  $resultSet = execute($conn, $SQL);
  $exit = close($conn);
  if ($resultSet == 1){
    print("Consulta realizada correctamente");
  }
  else{
    print("Error al ejecutar la consulta: ".$resultSet->error);
  }
?>
