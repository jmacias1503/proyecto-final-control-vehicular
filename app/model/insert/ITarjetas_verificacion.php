<?php
  include("../../lib/controller.php");
  $FolioVerificacion = $_GET['FolioVerificacion'];
  $HoraSalida = $_GET['HoraSalida'];
  $MotivoVerificacion = $_GET['MotivoVerificacion'];
  $FolioCertificado = $_GET['FolioCertificado'];
  $Semestre = $_GET['Semestre'];
  $TipoServicio = $_GET['TipoServicio'];
  $FechaExp = $_GET['FechaExp'];
  $HoraEntrada = $_GET['HoraEntrada'];
  $IdCentro = $_GET['IdCentro'];
  $IdSerie = $_GET['IdSerie'];
  $IdPago = $_GET['IdPago'];

  $SQL = "INSERT INTO tarjetas_verificacion(FolioVerificacion, HoraSalida, MotivoVerificacion, FolioCertificado, Semestre, TipoServicio, FechaExp, HoraEntrada, IdCentro, IdSerie, IdPago) VALUES('$FolioVerificacion', '$HoraSalida', '$MotivoVerificacion', '$FolioCertificado', '$Semestre', '$TipoServicio', '$FechaExp', '$HoraEntrada', '$IdCentro', '$IdSerie', '$IdPago');";
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
