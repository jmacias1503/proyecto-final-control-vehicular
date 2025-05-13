<?php
function connect(){
	$host = "db";
	$user = "root";
	$password = "sistemas-internet-31";
	$database = "vehicle_control";
	$conn = new mysqli($host, $user, $password, $database);
	return $conn;
}
function execute($conn, $sql){
	$resultSet = mysqli_query($conn, $sql) or die(mysqli_error($conn));
	return $resultSet;
}
function close($conn){
	$exit = mysqli_colse($conn);
	return $exit;
}
?>
