<?php 

include'../vendor/autoload.php';
include'../autoload.php';

$session =  new Session();
$session->validity();

$opcion     = $_REQUEST['op'];
$funciones  = new Funciones();

$conexion   =  new Conexion();
$conexion   =  $conexion->get_conexion();
$userCreate =  $_SESSION[KEY.NOMBRES].' '.$_SESSION[KEY.APELLIDOS];
$dateCreate =  date('Y-m-d H:i:s');


switch ($opcion) {
	case 1:

header("Content-type: application/json; charset=utf-8");

$query      =  "
SELECT
* FROM maecli";
$statement  =  $conexion->prepare($query);
$statement->execute();
$result     = $statement->fetchAll(PDO::FETCH_ASSOC);
$data       = $result;

$results = ["sEcho" => 1,
          "iTotalRecords" => count($data),
          "iTotalDisplayRecords" => count($data),
          "aaData" => $data 
           ];
echo json_encode($results);



		break;

	
	default:
	echo "opción no disponible";
		break;
}


 ?>