<?php 
include 'menu.php';
include 'conexion.php';

?>

<form class="row g-3 needs-validation " method="post"  novalidate>
  <div class="col-md-4 position-relative">
    <label for="validationTooltip01" class="form-label">Marca</label>
    <input type="text" class="form-control" id="validationTooltip01" name="marca" required>
    <div class="valid-tooltip">
      Looks good!
    </div>
  </div>
  
  </div>
  <div class="col-12">
    <button class="btn btn-primary" name="procesar" type="submit">registrar</button>
  </div>
</form>


<?php

if(isset($_POST['procesar'])){


$marca=$_POST['marca'];

//incio la busqueda de la marca para verificar su existencia en la bd

$consulta1=mysqli_query($conex,"SELECT MARCA FROM tbl_marca where MARCA='$marca'");
if(mysqli_num_rows($consulta1)==1){
    echo'ya existe';
}else{

    $sql=mysqli_query($conex,"INSERT INTO tbl_marca (ID_MARCA,MARCA) VALUES('','$marca')");
    if($sql){
        echo'registrado'; 
    }else{
        echo'error';
    }
}

}

?>