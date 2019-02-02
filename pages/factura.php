<?php 
include'../autoload.php';
$assets  = new Assets();
$session = new Session();
$session->validity();
$session->acceso();
$assets->title('FACTURA');
$assets->sweetalert();
$assets->datatables();
$assets->selectize();
$assets->head();
$assets->nav('..');
$assets->breadcrumbs('VENTAS','FACTURA');
?>


<!-- Botón Agregar -->
<div class="pull-right">
<button class="btn btn-primary btn-agregar"><i class="fa fa-plus"></i> Agregar</button>
</div>




<div class="panel panel-info">
	<div class="panel-heading">
		<h3 class="panel-title"><i class="fa fa-list"></i> FACTURAS</h3>
	</div>
	<div class="panel-body">
	
   <div class="table-responsive">
   	<table id="consulta"  class="table table-hover table-bordered" style="font-size: 12px">
   		<thead>
   			<tr class="info">
   				<th>Serie</th>
   				<th>Número</th>
   				<th>Ruc</th>
   				<th>Razón Social</th>
   				<th>Dirección</th>
   				<th>Moneda</th>
   				<th>SubTotal</th>
   				<th>IGV</th>
   				<th>Total</th>
   				<th>Comentario</th>
   				<th>Fecha</th>
   			</tr>
   		</thead>
   		<tbody>
   		</tbody>
   	</table>
   </div>


	</div>
</div>

<!-- Modal Agregar -->
	
<div class="modal fade" id="modal-agregar">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Modal title</h4>
			</div>
			<div class="modal-body">

		  <form id="agregar"  autocomplete="off">

		   <div class="pull-right">
		   <button class="btn btn-primary btn-factura" ><i class="fa fa-plus"></i> Crear Factura</button>
		   </div>
         
           <div class="panel panel-default">
           	<div class="panel-heading">
           		<h3 class="panel-title correlativo"></h3>
           	</div>
           	<div class="panel-body">

            <input type="hidden" name="serie" class="serie">
            <input type="hidden" name="numero" class="numero">
            <input type="hidden" name="moneda" value="PEN">

           	
            <div class="form-group">
			<label>Cliente</label>
			<select id="cliente" name="cliente"  class="cliente demo-default" placeholder="Agregar Cliente" required>
			<option value="">Agregar Cliente</option>
			</select>
			</div>
           
           <div class="form-group">
           <label>Fecha de Emisión</label>
           <input type="date" name="fecha_emision"  class="form-control" required value="<?= date('Y-m-d') ?>">
           </div>

           <div class="form-group">
           <label>Comentario</label>
           <textarea name="comentario"  rows="3" class="form-control" required
            onchange="Mayusculas(this)"></textarea>
           </div>



           	</div>
           </div>
          </form>


			<span id="helpBlock" class="help-block"><i class="fa fa-thumb-tack"></i>  Agregue los árticulos</span>
            
            <form id="agregar_item" autocomplete="off">

			<div class="form-group">
			<label>Artículo</label>
			<select id="articulo" name="articulo"  class="articulo demo-default" placeholder="Agregar Artículo" required>
			<option value="">Agregar Artículo</option>
			</select>
			</div>


			<div class="row">
			<div class="col-md-4">
			<div class="form-group"><!--  
			<label>Precio</label>-->
			<input type="number" placeholder="Precio"  step="any" name="precio" class="precio form-control" required>
			</div>
				
			</div>
			<div class="col-md-4">
			<div class="form-group"><!--  
			<label>Cantidad</label>-->
			<input type="number" step="any" placeholder="Cantidad"   name="cantidad" class="cantidad form-control" required>
			</div>
				
			</div>

			<div class="col-md-4">
			<div class="form-group">
			<button class="btn btn-primary"><i class="fa fa-plus"></i> Agregar Item</button>
			</div>
			</div>
			</div>

            
            

            </form>
				
			</div>


			<div class="modal-footer">
			<div class="table-responsive">
				<table class="table table-hover table-condensed" style="font-size: 12px">
					<thead>
						<tr class="active">
							<th class='text-left'>Código</th>
							<th class='text-left'>Descripción</th>
							<th class='text-center'>Und</th>
							<th class='text-center'>Precio</th>
							<th class='text-center'>Cant</th>
							<th class='text-center'>Total</th>
						</tr>
					</thead>
					<tbody class="tbody_item">

					</tbody>
					<tbody >
					<tr>
					<td colspan="5" class="text-right"><strong>Sub Total</strong></td>
					<td class="text-center subtotal">0</td>
					</tr>
					<tr>
					<td colspan="5" class="text-right"><strong>IGV</strong></td>
					<td class="text-center igv">0</td>
					</tr>
					<tr>
					<td colspan="5" class="text-right"><strong>Total</strong></td>
					<td class="text-center total">0</td>
					</tr>
					</tbody>
				</table>
			</div>
			</div>

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
"sAjaxSource": "../sources/factura.php?op=1",
"aoColumns": [

{ mData: 'serie'},
{ mData: 'numero'},
{ mData: 'ruc'},
{ mData: 'razon_social'},
{ mData: 'direccion'},
{ mData: 'moneda'},
{ mData: 'subtotal'},
{ mData: 'igv'},
{ mData: 'total'},
{ mData: 'comentario'},
{ mData: 'fecha_emision'}





]

});

 });



}

loadData();

function loadItem()
{

$('#tbody_item').html('');
//Cargar Tabla
tbody_item = "";
url        = "../sources/factura.php?op=5";
tbody_item = "";
$.getJSON(url,{},function(array){


if(array.length>0)
{

array.forEach(function (data){

tbody_item += "<tr>";
tbody_item += "<td class='text-left'>"+data.codigo+"</td>";
tbody_item += "<td class='text-left'>"+data.descripcion+"</td>";
tbody_item += "<td class='text-center'>"+data.unidad+"</td>";
tbody_item += "<td class='text-center'>"+data.cantidad+"</td>";
tbody_item += "<td class='text-center'>"+data.precio+"</td>";
tbody_item += "<td class='text-center'>"+data.total+"</td>";
tbody_item += "</tr>";

$('.tbody_item').html(tbody_item);

});

$('.btn-factura').removeAttr('style','');
$('.btn-factura').attr('style','display:block');

}
else
{

$('.btn-factura').attr('style','display:none');


tbody_item += "<tr>";
tbody_item += "<td class='text-center' colspan='6'>No hay Registros Disponibles</td>";
tbody_item += "</tr>";

$('.tbody_item').html(tbody_item);

}




});

//Cargar Impuestos
url        = "../sources/factura.php?op=6";

$.getJSON(url,{},function(data){

$('.subtotal').html(data.subtotal);
$('.igv').html(data.igv);
$('.total').html(data.total);


});


}


$(document).on('click','.btn-agregar',function(){


$('#agregar')[0].reset();
loadItem();

//Cargar Correlativo
url = "../sources/factura.php?op=7";
$.getJSON(url,{},function(data){

$('.correlativo').html(data.serie+' - '+data.correlativo);
$('.serie').val(data.serie);
$('.numero').val(data.correlativo);

});




$('.modal-title').html('Crear Factura');
$('#modal-agregar').modal('show');


//Inicio Cargar Clientes
$('#cliente').selectize({
maxItems: 1,
valueField: 'ruc',
labelField: 'razon_social',
searchField: 'razon_social',
options: [],
create: false,
load: function(query, callback) {
if (!query.length) return callback();

$.ajax({
url: '../sources/factura.php?op=2',
type: 'GET',
dataType: 'json',
data: {
busqueda: query,
},
error: function() {
callback();
},
success: function(res) {
callback(res);
}
});

}//

});

//Fin Cargar Clientes


//Inicio Cargar Artículos
$('#articulo').selectize({
maxItems: 1,
valueField: 'codigo',
labelField: 'descripcion',
searchField: 'descripcion',
options: [],
create: false,
load: function(query, callback) {
if (!query.length) return callback();

$.ajax({
url: '../sources/factura.php?op=3',
type: 'GET',
dataType: 'json',
data: {
busqueda: query,
},
error: function() {
callback();
},
success: function(res) {
callback(res);
}
});

}//

});

//Fin Cargar Artículos


});

//Agregar Item
$(document).on('submit','#agregar_item',function(e){

parametros = $(this).serialize();

$.ajax({

url:"../sources/factura.php?op=4",
type:"POST",
data:parametros,
beforeSend:function(){

swal({
 
  title:"Cargando",
  text: "Espere un momento no cierre la ventana",
  imageUrl: '../assets/img/loader2.gif',
  showConfirmButton:false

});



},
success:function(data){

loadItem();

$('.cantidad').val('');
$('.precio').val('');

swal({
 
  title:"Buen Trabajo",
  text: "Item Agregado",
  type: 'success',
  timer: 1000,
  showConfirmButton:false

});



}



});




e.preventDefault();
});



//Crear Factura
$(document).on('submit','#agregar',function(e){

parametros =  $(this).serialize();


$.ajax({

url:"../sources/factura.php?op=8",
type:"POST",
data:parametros,
beforeSend:function(){

swal({
 
  title:"Cargando",
  text: "Espere un momento no cierre la ventana",
  imageUrl: '../assets/img/loader2.gif',
  showConfirmButton:false

});



},
success:function(data){

loadItem();
$('#modal-agregar').modal('hide');

swal({
 
  title:"Buen Trabajo",
  text: "Factura Creada",
  type: 'success',
  timer: 3000,
  showConfirmButton:false

});



}



});


e.preventDefault();
});
</script>

<?php  $assets->footer();  ?>