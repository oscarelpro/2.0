<?php    
include 'menu.php';
include 'conexion.php';

?>

<div class="container">
<form class="row g-3" method="POST" action="procesar_producto.php">
  <div class="col-md-4">
    <label for="inputEmail4" class="form-label">CEDULA</label>
    <input type="text" class="form-control" id="inputEmail4"  name="CEDULA"  placeholder="INGRESE DOCUMENTO DE IDENTIDAD">
  </div>
  <div class="col-md-4">
    <label for="inputPassword4" class="form-label">NOMBRE</label>
    <input type="text"  name="NOMBRE" class="form-control" id="inputPassword4" placeholder="NOMBRE DEL REPARTIDOR">
  </div>
  
  <div class="col-md-4">
    <label for="inputPassword4" class="form-label">APELLIDO</label>
    <input type="text"  name="APELLIDO" class="form-control" id="inputPassword4" placeholder="APELLIDO DEL REPARTIDOR">
  </div>
  <div class="col-md-4">
    <label for="inputCity" class="form-label">USUARIO</label>
    <input type="text" name="USUARIO" class="form-control" id="inputCity" placeholder="USUARIO DEL REPARTIDOR">
  </div>
  <div class="col-md-4">
    <label for="inputPassword4" class="form-label">CLAVE</label>
    <input type="text"  name="CLAVE" class="form-control" id="inputPassword4" placeholder="INGRESE SU CLAVE">
  </div> 
  <div class="col-md-4">
    <label for="inputPassword4" class="form-label">CLAVE</label>
    <input type="text"  name="CLAVE2" class="form-control" id="inputPassword4" placeholder="REPITA SU CLAVE">
  </div>
  <div class="col-md-4">
    <label for="inputPassword4" class="form-label">PREGUNTA DE SEGURIDAD</label>
    <input type="text"  name="PREGUNTA" class="form-control" id="inputPassword4" placeholder="INGRESE UNA PREGUNTA DE SEGURIDAD">
  </div>

  <div class="col-md-4">
    <label for="inputZip" class="form-label">RESPUESTA</label>
    <input type="text" name="RESPUESTA" class="form-control" id="inputZip">
  </div>

  <div class="col-md-4">
    <label for="inputZip" class="form-label">CORREO</label>
    <input type="text" name="CORREO" class="form-control" id="inputZip">
  </div>

  <div class="col-12">
    <button type="submit" class="btn btn-primary">REGISTRAR</button>
  </div>
</form>


</div>
