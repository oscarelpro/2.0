<?php 
include 'menu_usuario.php';

?>

<div class="container">
<form class="row g-3" method="POST" action="procesar_producto.php">
 
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">PRODUCTO</label>
    <input type="text"  name="PRODUCTO" class="form-control" id="inputPassword4" placeholder="NOMBRE DEL PRODUCTO">
  </div>
  
 <div class="form-group col-md-4 ">
           <label for="exampleFormControlInput1">MARCA</label>
           <?php 
   $resultado=mysqli_query($conex,"SELECT ID_MARCA,MARCA FROM tbl_marca");
   $row=mysqli_num_rows($resultado);
   
   echo "<select name='ID_MARCA' id='ID_MARCA' onChange='ejecutarAjax(this.value)' class='form-control'>" ; 

 //echo "<option value='todo'>Seleccione un Estado. </option>";
        if($row>0){
             do{
             echo "<option value='".$var['ID_MARCA']."'>".utf8_encode($var['MARCA'])." </option>";   
             }while ($var=mysqli_fetch_array($resultado));
           }
       echo "</select>";
       ?>
       </div>  
  <div class="col-md-4">
    <label for="inputCity" class="form-label">DETALLE</label>
    <input type="text" name="DETALLE" class="form-control" id="inputCity" >
  </div>
 <div class="form-group col-md-4 ">
           <label for="exampleFormControlInput1">UBICACION</label>
           <?php 
   $resultado=mysqli_query($conex,"SELECT ID_ALMACEN,ALMACEN FROM tbl_almacen");
   $row=mysqli_num_rows($resultado);
   
   echo "<select name='ID_ALMACEN' id='ID_ALMACEN' onChange='ejecutarAjax(this.value)' class='form-control'>" ; 

 //echo "<option value='todo'>Seleccione un Estado. </option>";
        if($row>0){
             do{
             echo "<option value='".$var['ID_ALMACEN']."'>".utf8_encode($var['ALMACEN'])." </option>";   
             }while ($var=mysqli_fetch_array($resultado));
           }
       echo "</select>";
       ?>
       </div>     
       <div class="form-group col-md-4 ">
           <label for="exampleFormControlInput1">CATEGORIA</label>
           <?php 
   $resultado=mysqli_query($conex,"SELECT ID_CATEGORIA,CATEGORIA FROM tbl_categoria");
   $row=mysqli_num_rows($resultado);
   
   echo "<select name='ID_CATEGORIA' id='ID_CATEGORIA' onChange='ejecutarAjax(this.value)' class='form-control'>" ; 

 //echo "<option value='todo'>Seleccione un Estado. </option>";
        if($row>0){
             do{
             echo "<option value='".$var['ID_CATEGORIA']."'>".utf8_encode($var['CATEGORIA'])." </option>";   
             }while ($var=mysqli_fetch_array($resultado));
           }
       echo "</select>";
       ?>
       </div>  

  <div class="col-md-4">
    <label for="inputZip" class="form-label">CANTIDAD</label>
    <input type="text" name="CANTIDAD" class="form-control" id="inputZip">
  </div>

  <div class="col-md-4">
    <label for="inputZip" class="form-label">PRECIO</label>
    <input type="text" name="PRECIO" class="form-control" id="inputZip">
  </div>

  <div class="col-12">
    <button type="submit" class="btn btn-primary">REGISTRAR</button>
  </div>
</form>


</div>