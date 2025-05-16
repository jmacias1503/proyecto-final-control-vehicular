<?php
include("../../lib/controller.php");
  $FolioMultas = $_REQUEST['FolioMultas'];

  $SQL = "DELETE FROM multas WHERE FolioMultas = '$FolioMultas'";
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
