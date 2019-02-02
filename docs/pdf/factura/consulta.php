<?php 

$numero = $_REQUEST['numero'];

$funciones = new Funciones();

//Cab
$query =  "SELECT 
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
DATE_FORMAT(fecha_emision,'%d/%m/%Y')fecha_emision FROM fac_cab WHERE CONCAT(serie,'-',numero)='".$numero."'";
$cab   =  $funciones->query($query)[0];

//Det
$query =  "SELECT id, serie, numero, codigo, descripcion, unidad, cantidad, precio,cantidad*precio total FROM fac_det WHERE CONCAT(serie,'-',numero)='".$numero."'";
$det   =  $funciones->query($query);

 ?>


<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>FACTURA <?= $numero ?></title>
<link rel="stylesheet" href="estilos.css">
</head>
<body>


<table class="banner">
	
<tr>
<td>

PERUTEC ENTERPRISES S.A.C <br>
JR. RIO PUTUMAYO MZA. S LOTE. 19 URB. CANTO
REY - Lima - Lima

</td>
<td>
<img src="img/qr-sunat.jpg" alt="" width="70">
</td>
<td class="text-center" style="border: 1px solid #000;padding: 5px;font-size: 14px">

FACTURA ELECTRONICA <br>
20602324321 	<br>
<?= $numero ?>

</td>
</tr>


</table>


<table class="cabecera">
	
<tr>
<td>Fecha Emisión:</td>
<td class="cabecera-td"><?= $cab['fecha_emision'] ?></td>
</tr>


<tr>
<td>Señor(es):</td>
<td class="cabecera-td"><?= $cab['razon_social'] ?></td>
</tr>

<tr>
<td>R.U.C:</td>
<td class="cabecera-td"><?= $cab['ruc'] ?></td>
</tr>


<tr>
<td>Dirección:</td>
<td class="cabecera-td"><?= $cab['direccion'] ?></td>
</tr>


<tr>
<td>Tipo Moneda:</td>
<td class="cabecera-td"><?= $cab['moneda'] ?></td>
</tr>

</table>



<table class="detalle">
<thead>
<tr style="background-color: skyblue">
<th class="detalle-td text-center">Código</th>
<th class="detalle-td">Descripción</th>
<th class="detalle-td text-center">Und</th>
<th class="detalle-td text-center">Cant</th>
<th class="detalle-td text-center">Precio</th>
<th class="detalle-td text-center">Total</th>
</tr>
</thead>
<tbody>
<?php foreach ($det as $key => $value): ?>
<tr>
<td class="detalle-td text-center"><?= $value['codigo'] ?></td>
<td class="detalle-td"><?= $value['descripcion'] ?></td>
<td class="detalle-td text-center"><?= $value['unidad'] ?></td>
<td class="detalle-td text-center"><?= round($value['cantidad'],2) ?></td>
<td class="detalle-td text-center"><?= round($value['precio'],2) ?></td>
<td class="detalle-td text-center"><?= round($value['total'],2) ?></td>
</tr>
<?php endforeach ?>
</tbody>
<tbody>
<tr>
<td colspan="5" class="text-right">SubTotal</td>
<td class="text-center"><?= round($cab['subtotal'],2) ?></td>
</tr>
<tr>
<td colspan="5" class="text-right">IGV</td>
<td class="text-center"><?= round($cab['igv'],2) ?></td>
</tr>
<tr>
<td colspan="5" class="text-right">Total</td>
<td class="text-center"><?= round($cab['total'],2) ?></td>
</tr>
</tbody>
</table>


<div id="piedepagina">

<p>QBjK2SrYOzdzMEVQa53nHgvt4uE=</p>


<p style="border: 1px solid #000;padding: 5px;">Representación impresa de la factura electrónica generada desde el sistema facturador SUNAT. Puede verificarla
utilizando su clave SOL
</p>


</div>
	
</body>
</html>