<?php
  include("../../lib/controller.php");
  $FolioVerificacion = $_GET['FolioVerificacion'];

  $SQL = "DELETE FROM Tarjetas_verificacion WHERE FolioVerificacion = '$FolioVerificacion'";
  $conn = connect();

  $resultSet = execute($conn, $SQL);
  $exit = close($conn);
  if (mysqli_affected_rows($resultSet) == 0){
    print("Ninguna fila afectada");
  }
  else{
    print("Fila eliminada correctamente");
  }
?>
