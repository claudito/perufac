<?php 

include'../../../autoload.php';

$objeto = new Usuario();
$assets = new Assets();

$id     = $_GET['id'];

$dato   = $objeto->consulta($id);

 ?>

<form id="actualizar" autocomplete="off">

<input type="hidden" name="id" value="<?= $id ?>">

<div class="form-group">
<label>Nombres</label>
<input type="text" name="nombres" class="form-control" required value="<?= $dato['nombres']; ?>" onchange="Mayusculas(this)">
</div>

<div class="form-group">
<label>Apellidos</label>
<input type="text" name="apellidos" class="form-control" value="<?= $dato['apellidos']; ?>" onchange="Mayusculas(this)">
</div>

<div class="form-group">
<label>Correo</label>
<input type="email" name="correo" class="form-control" required value="<?= $dato['correo']; ?>">
</div>

<div class="form-group">
<label>Usuario</label>
<input type="text" name="user" class="form-control" required value="<?= $dato['user']; ?>"  readonly>
</div>



<div class="form-group">
<label>Estado</label><br>
<?php if ($dato['estado']=='ACTIVO'): ?>
<label class="radio-inline">
  <input type="radio" name="estado"  required value="ACTIVO" checked> Activo
</label>
<label class="radio-inline">
  <input type="radio" name="estado"  required value="INACTIVO"> Inactivo
</label>
<?php else: ?>
<label class="radio-inline">
  <input type="radio" name="estado"  required value="ACTIVO"> Activo
</label>
<label class="radio-inline">
  <input type="radio" name="estado"  required value="INACTIVO" checked> Inactivo
</label>
<?php endif ?>
</div>


<div class="form-group">
<label>Tipo</label><br>
<?php if ($dato['tipo']=='user'): ?>
<label class="radio-inline">
  <input type="radio" name="tipo"  required value="user" checked> Usuario
</label>
<label class="radio-inline">
  <input type="radio" name="tipo"  required value="admin"> Admin
</label>
<?php else: ?>
<label class="radio-inline">
  <input type="radio" name="tipo"  required value="user"> Usuario
</label>
<label class="radio-inline">
  <input type="radio" name="tipo"  required value="admin" checked> Admin
</label>
<?php endif ?>
</div>


<button class="btn btn-primary">Actualizar</button>

</form>

<?php 


$assets->modal_actualizar('usuario');


 ?>