<?php
  include("../../lib/controller.php");
  $idCentro = $_POST['IdCentro'];
  $SQL = "DELETE FROM centros_verificacion WHERE idCentro = '$idCentro'";

  $conn = connect();

  $resultSet = execute($conn, $SQL);
  $exit = close($conn);
  if (mysqli_affected_rows($resultSet) == 0){
    print("Ninguna fila eliminada");
  }
  else{
    print("Fila eliminada correctamente");
  }
?>
