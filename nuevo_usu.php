<?php 
include 'menu.php';
include 'conexion.php';
?>
<br><br><br>
<div class="container">
<form method="POST" action="procesar_usuario.php" >
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">NOMBRE DE USUARIO </label>
    <input type="text" class="form-control" name="usuario" aria-describedby="emailHelp">
   
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control"  name="pass"  >
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">PREGUNTA DE SEGURIDAD</label>
    <input type="text" class="form-control"  name="pregunta"  >
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">RESPUESTA</label>
    <input type="text" class="form-control"  name="respuesta"  >
  </div>
  <div class="md-3 ">
           <label for="exampleFormControlInput1">TIPO DE USUARIO </label>
           <?php 
   $resultado=mysqli_query($conex,"SELECT id_rol,tipo FROM tbl_roll");
   $row=mysqli_num_rows($resultado);
   
   echo "<select name='id_rol' id='id_rol' onChange='ejecutarAjax(this.value)' class='form-control'>" ; 

 //echo "<option value='todo'>Seleccione un Estado. </option>";
        if($row>0){
             do{
             echo "<option value='".$var['id_rol']."'>".utf8_encode($var['tipo'])." </option>";   
             }while ($var=mysqli_fetch_array($resultado));
           }
       echo "</select>";
       ?>
       </div> 
       <br><br><br> 
       <center><div class="col-12">
    <button type="submit" class="btn btn-primary">Crear</button>
    </div></center>
</form>

</div>

