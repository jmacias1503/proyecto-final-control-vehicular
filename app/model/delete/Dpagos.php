<?php
  include("../../lib/controller.php");
  $id = $_POST['id'];

  $SQL = "DELETE FROM pagos WHERE id = '$id'";
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
