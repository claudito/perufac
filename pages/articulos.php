<?php 
include'../autoload.php';
$assets  = new Assets();
$session = new Session();
$session->validity();
$session->acceso();
$assets->title('ARTÍCULOS');
$assets->sweetalert();
$assets->datatables();
$assets->selectize();
$assets->head();
$assets->nav('..');
$assets->breadcrumbs('MANTENIMIENTO','ARTÍCULOS');
?>



<div class="panel panel-info">
	<div class="panel-heading">
		<h3 class="panel-title"><i class="fa fa-list"></i> ARTÍCULOS</h3>
	</div>
	<div class="panel-body">
	
   <div class="table-responsive">
   	<table id="consulta"  class="table table-hover table-bordered" style="font-size: 12px">
   		<thead>
   			<tr class="info">
   			<th>Código</th>
   			<th>Descripción</th>
   			<th>Unidad</th>
   			</tr>
   		</thead>
   		<tbody>
   		</tbody>
   	</table>
   </div>


	</div>
</div>




<script>

function loadData()
{

 $(document).ready(function (){

$('#consulta').dataTable({

//dom: 'Bfrtip',
 "order": [[ 0, "desc" ]],
"destroy":true,
"deferRender": true,
"bAutoWidth": false,
"iDisplayLength": 25,
"language": {
"url": "../assets/js/spanish.json"
},
"bProcessing": true,
"sAjaxSource": "../sources/articulos.php?op=1",
"aoColumns": [

{ mData: 'codigo'},
{ mData: 'descripcion'},
{ mData: 'unidad'}


]

});

 });



}

loadData();

</script>

<?php  $assets->footer();  ?>