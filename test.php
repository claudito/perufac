<?php 


try {
	
$conexion = new PDO("sqlsrv:Server=LUIS\SQLEXPRESS;database=008BDCOMUN","SISTEMAS","SISTEMAS",array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
$conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);


$query     = "SELECT CCODCLI,CNOMCLI,CDIRCLI,CNUMRUC FROM MAECLI WHERE CDIRCLI!='' AND CNUMRUC!=''";
$statement = $conexion->prepare($query);
$statement->execute();

$result = $statement->fetchAll(PDO::FETCH_ASSOC);

$sql = "INSERT INTO maecli(codigo, ruc, razon_social, direccion) VALUES ";

foreach ($result as $key => $value) {
	
$sql .="(";


$sql .="'".$value['CCODCLI']."',";
$sql .="'".$value['CNUMRUC']."',";
$sql .="'".$value['CNOMCLI']."',";
$sql .="'".$value['CDIRCLI']."'";


$sql .="),";


}

$sql  = substr($sql,0,-1);
echo $sql.";";


} catch (Exception $e) {
	
  echo "Error: ".$e->getMessage();
}










 ?>


