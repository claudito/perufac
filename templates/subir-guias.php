<?php 

include'../autoload.php';

$session = new Session();
$session->validity();

$conexion        = new Conexion();
$conexion        = $conexion->get_conexion();
$funciones  = new Funciones();

$query =  "
SELECT * FROM (
SELECT 
CAALMA,
CATD,
CANUMDOC,
CONVERT(VARCHAR(10),CAFECDOC,103)CAFECDOC,
CACODMOV,
CACODCLI,
CARUC,
CANOMCLI,
CADIRENV,
CANUMORD,
ETIQUETA1,
ETIQUETA2,
CAVENDE,
CACODMON,
CATIPCAM,
CAFORVEN,
DES_VEN,
DES_FP
FROM [008BDCOMUN].DBO.MOVALMCAB M 
INNER JOIN 
(
SELECT COD_VEN,DES_VEN FROM [008BDCOMUN].DBO.VENDEDOR
) V ON M.CAVENDE=V.COD_VEN
INNER JOIN
(
SELECT  COD_FP,DES_FP FROM [008BDCOMUN].DBO.FORMA_PAGO
) F ON M.CAFORVEN=F.COD_FP
WHERE 
CASITGUI='V' AND
CANUMORD!='' AND
YEAR(CAFECDOC) BETWEEN '2017' AND '2050'
) C LEFT JOIN [BD_PROMEDON].DBO.auditoria_guia A ON C.CANUMDOC=A.numero
WHERE A.numero IS NULL";
$result = $funciones->query($query);


 ?>


<div class="table-responsive">
<table id="consulta" class="table table-responsive" style="font-size: 12px">
<thead>
<tr>
<th>Guía</th>
<th>Fecha</th>
<th>Cod. Cliente</th>
<th>Cliente</th>
<th>Cotización</th>
<th>Vendedor</th>
<th>Paciente</th>
<th>Doctor</th>
<th>Acciones</th>
</tr>
</thead>
<tbody>
<?php foreach ($result as $key => $value): ?>

<tr>
<td><?= $value['CANUMDOC'] ?></td>
<td><?= $value['CAFECDOC'] ?></td>
<td><?= $value['CACODCLI'] ?></td>
<td><?= $value['CANOMCLI'] ?></td>
<td><?= $value['CANUMORD']?></td>
<td><?= $value['DES_VEN'] ?></td>
<td><?= $value['ETIQUETA1'] ?></td>
<td><?= $value['ETIQUETA2'] ?></td>
<td>
<button type="button" 
data-numero="<?= $value['CANUMDOC'] ?>"
class="btn btn-primary btn-subir btn-sm">
<i class="fa fa-upload"></i>
</button>
</td>

</tr>


<?php endforeach ?>
</tbody>
</table>
</div>


<script>
$(document).ready(function() {
    $('#consulta').DataTable({

"order": [[ 0, "desc" ]],
"iDisplayLength": 25,
"language": {
"url": "../assets/js/spanish.json"
}



    });
} );
</script>