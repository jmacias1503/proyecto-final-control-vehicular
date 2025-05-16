<?php
include("../../lib/controller.php");
  $IdDomicilio = $_GET['IdDomicilio'];

  $SQL = "DELETE FROM domicilios WHERE idDomicilio = '$IdDomicilio'";
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
