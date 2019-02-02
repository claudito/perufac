<?php 


try {
	
$conexion = new PDO("sqlsrv:Server=LUIS\SQLEXPRESS;database=008BDCOMUN","SISTEMAS","SISTEMAS",array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
$conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);


$query     = "SELECT ACODIGO,ACODIGO2,ADESCRI,AUNIDAD FROM MAEART WHERE AESTADO='V'";
$statement = $conexion->prepare($query);
$statement->execute();

$result = $statement->fetchAll(PDO::FETCH_ASSOC);

$sql = "INSERT INTO maeart(codigo, unidad, descripcion) VALUES ";

foreach ($result as $key => $value) {
	
$sql .="(";


$sql .="'".$value['ACODIGO']."',";
$sql .="'".$value['AUNIDAD']."',";
$sql .="'".$value['ADESCRI']."'";

$sql .="),";


}

$sql  = substr($sql,0,-1);
echo $sql.";";


} catch (Exception $e) {
	
  echo "Error: ".$e->getMessage();
}










 ?>


