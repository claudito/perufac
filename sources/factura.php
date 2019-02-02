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
id,
serie, 
numero,
ruc,
razon_social,
direccion, 
moneda, 
round(subtotal,2)subtotal,
round(igv,2)igv, 
round(total,2)total,
comentario,
DATE_FORMAT(fecha_emision,'%d/%m/%Y')fecha_emision FROM fac_cab ";
$statement  =  $conexion->prepare($query);
$statement->execute();
$result     = $statement->fetchAll(PDO::FETCH_ASSOC);

$data = array();

foreach ($result as $key => $value) {
	
 $data[] = [

'serie'=>$value['serie'],
'numero'=>'<a href="../docs/pdf/factura?numero='.$value['serie'].'-'.$value['numero'].'" target="blank">'.$value['numero'].'</a>',
'ruc'=>$value['ruc'],
'razon_social'=>$value['razon_social'],
'direccion'=>$value['direccion'],
'moneda'=>$value['moneda'],
'subtotal'=>$value['subtotal'],
'igv'=>$value['igv'],
'total'=>$value['total'],
'comentario'=>$value['comentario'],
'fecha_emision'=>$value['fecha_emision'],


 ];


}


$results = ["sEcho" => 1,
          "iTotalRecords" => count($data),
          "iTotalDisplayRecords" => count($data),
          "aaData" => $data 
           ];
echo json_encode($results);



		break;

	case 2:

$busqueda = $_REQUEST['busqueda'];

$query  = "SELECT * FROM maecli WHERE razon_social LIKE '%".$busqueda."%'";
$result = $funciones->query($query);

echo json_encode($result);

	break;

case 3:
$busqueda = trim($_REQUEST['busqueda']);

$query  = "SELECT * FROM maeart WHERE CONCAT(codigo,descripcion) LIKE '%".$busqueda."%'";
$result = $funciones->query($query);

echo json_encode($result);


break;

case 4:

$articulo = $_REQUEST['articulo'];
$precio   = $_REQUEST['precio'];
$cantidad = $_REQUEST['cantidad'];

//Articulo
$query  =  "SELECT * FROM maeart WHERE codigo='".$articulo."'";
$result = $funciones->query($query)[0];

//Insertar en Tabla Temporal
try {
	
$query = "INSERT INTO temp_fac_det(codigo,descripcion,unidad,cantidad,precio) VALUES
(:codigo,:descripcion,:unidad,:cantidad,:precio)";
$statement = $conexion->prepare($query);
$statement->bindParam(':codigo',$result['codigo']);
$statement->bindParam(':descripcion',$result['descripcion']);
$statement->bindParam(':unidad',$result['unidad']);
$statement->bindParam(':cantidad',$cantidad);
$statement->bindParam(':precio',$precio);
$statement->execute();
echo "ok";




} catch (Exception $e) {
	
echo "Error: ".$e->getMessage();

}

break;

case 5:

$query  =  "SELECT 

id,
codigo,
descripcion,
unidad,
round(cantidad,2)cantidad,
round(precio,2)precio,
round(precio*cantidad,2) total



 FROM temp_fac_det";
$result = $funciones->query($query);

echo json_encode($result);

break;

case 6:

$query =  "SELECT 

round(subtotal,2)subtotal,
round((subtotal*1.18)-subtotal,2) igv,
round(subtotal*1.18,2) total

FROM (SELECT

SUM(cantidad*precio)subtotal

FROM temp_fac_det ) t";

$result = $funciones->query($query)[0];

echo json_encode($result);

break;


case 7:

//truncar tabla temporal
try {
	
$query = "TRUNCATE TABLE temp_fac_det";
$statement = $conexion->prepare($query);
$statement->execute();

} catch (Exception $e) {
	
echo "Error: ".$e->getMessage();

}


//Correlativo
$query =  "SELECT  serie,numero,LPAD(numero+1, 8, '0')correlativo FROM correlativo  WHERE tipo='FACTURA'";

$result = $funciones->query($query)[0];

echo json_encode($result);


break;

	
case 8:


$serie         = $_REQUEST['serie'];
$numero        = $_REQUEST['numero'];
$moneda        = $_REQUEST['moneda'];
$fecha_emision = $_REQUEST['fecha_emision'];
$comentario    = $funciones->validar_xss($_REQUEST['comentario']);

//Datos Cliente
$query   =  "SELECT * FROM maecli WHERE ruc='".$_REQUEST['cliente']."'";
$cliente = $funciones->query($query)[0];

//Impuesto
$query =  "SELECT 

round(subtotal,2)subtotal,
round((subtotal*1.18)-subtotal,2) igv,
round(subtotal*1.18,2) total

FROM (SELECT

SUM(cantidad*precio)subtotal

FROM temp_fac_det ) t";

$impuesto = $funciones->query($query)[0];


//insetar cabecera
try {
	
$query =  "INSERT INTO fac_cab(serie, numero, ruc, razon_social, direccion, moneda, subtotal, igv, total, comentario, fecha_emision) VALUES
(:serie,:numero,:ruc,:razon_social,:direccion,:moneda,:subtotal,:igv,:total,:comentario,:fecha_emision)";
$statement = $conexion->prepare($query);
$statement->bindParam(':serie',$serie);
$statement->bindParam(':numero',$numero);
$statement->bindParam(':ruc',$cliente['ruc']);
$statement->bindParam(':razon_social',$cliente['razon_social']);
$statement->bindParam(':direccion',$cliente['direccion']);
$statement->bindParam(':moneda',$moneda);
$statement->bindParam(':subtotal',$impuesto['subtotal']);
$statement->bindParam(':igv',$impuesto['igv']);
$statement->bindParam(':total',$impuesto['total']);
$statement->bindParam(':comentario',$comentario);
$statement->bindParam(':fecha_emision',$fecha_emision);
$statement->execute();
echo "ok cab";


} catch (Exception $e) {
	
echo "Error: ".$e->getMessage();


}


//insertar detalle
try {

$query =  "INSERT INTO fac_det(serie,numero,codigo,descripcion,unidad,cantidad,precio)
SELECT :serie,:numero,codigo,descripcion,unidad,cantidad,precio FROM temp_fac_det";
$statement = $conexion->prepare($query);
$statement->bindParam(':serie',$serie);
$statement->bindParam(':numero',$numero);
$statement->execute();
echo "ok det";


} catch (Exception $e) {
	
echo "Error: ".$e->getMessage();


}

//actualizar correlativo
try {

$query =  "UPDATE correlativo SET numero=numero+1 WHERE tipo='FACTURA'";
$statement = $conexion->prepare($query);
$statement->execute();
echo "ok correlativo";


} catch (Exception $e) {
	
echo "Error: ".$e->getMessage();


}



break;

	default:
	echo "opción no disponible";
		break;
}


 ?>