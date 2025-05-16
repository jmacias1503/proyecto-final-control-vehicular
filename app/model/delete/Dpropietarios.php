<?php
  include("../../lib/controller.php");
  $IdPropietario = $_GET['IdPropietario'];

  $SQL = "DELETE FROM propietarios WHERE IdPropietario = '$IdPropietario'";
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
