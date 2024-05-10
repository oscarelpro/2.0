<?php  

include 'menu.php';
include 'conexion.php';


?>


<form class="form-inline container" method="post">
 
  <div class="form-group mx-sm-3 mb-2">
    <label for="inputPassword2" class="sr-only">Consultar</label>
    <input type="text" class="form-control" id="inputPassword2" placeholder="busqueda" name="codigo">
  </div>
  <center><button type="submit" class="btn btn-primary mb-2">Buscar</button></center>
</form>
<?php  

//conslta a multiples tablas 


    if(isset($_POST['codigo'])){
    ?>
   
    <table class="table  table-dark table-striped  container">
  <thead class="thead-dark">
    <tr>
      <th scope="col">PRODUCTO</th>
      <th scope="col">STOCK</th>
      <th scope="col">SKU</th>
      <th scope="col">PRECIO</th>
      <th scope="col">DETALLE</th>
      <th scope="col">CATEGORIA</th>
      <th scope="col">UBICACION</th>
 
    </tr>
  </thead>
  <tbody>
   <?php
      //consula multi tabla para obtener categoria y ubicacion de los productos
   
      // se procede a la busqueda por codigo de barra
      
      $consulta=mysqli_query($conex,"SELECT pr.p_nombre,pr.stock,pr.sku,pr.precio,pr.detalle,cat.categoria,al.almacen from tbl_producto pr INNER JOIN tbl_categoria cat ON pr.categoria = cat.id_categoria INNER JOIN tbl_almacen al ON pr.almacen = al.id_almacen WHERE pr.sku='$_POST[codigo]'");
      while($var1=mysqli_fetch_array($consulta)){
      
      ?>
    <tr>
      <td><?php echo $var1[0];?></td>
      <td><?php echo $var1[1];?></td>
      <td><?php echo $var1[2];?></td>
      <td><?php echo $var1[3].'$';?></td>
      <td><?php echo $var1[4];?></td>
      <td><?php echo $var1[5];?></td>
      <td><?php echo $var1[6];?></td>
      
    
      
     
      <?php  }?>
    </tr>
  
   
  </tbody>
</table>

    
<?php
    
  }
    ?>
    