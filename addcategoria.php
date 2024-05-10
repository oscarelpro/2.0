<?php 
include 'menu.php';
include 'conexion.php';

?>

<form class="row g-3 needs-validation " method="post" novalidate>
  <div class="col-md-4 position-relative">
    <label for="validationTooltip01" class="form-label">Ctegoria</label>
    <input type="text" class="form-control" id="validationTooltip01" name="categoria" required>
    <div class="valid-tooltip">
      Looks good!
    </div>
  </div>
  
  </div>
  <div class="col-12">
    <button class="btn btn-primary" name='registrar'  type="submit">registrar</button>
  </div>
</form>

<?php

if(isset($_POST['registrar'])){


$categoria=$_POST['categoria'];

$consulta1=mysqli_query($conex,"SELECT CATEGORIA FROM tbl_categoria where CATEGORIA='$categoria'");
if(mysqli_num_rows($consulta1)==1){
    echo'ya existe';
}else{

    $sql=mysqli_query($conex,"INSERT INTO tbl_categoria (ID_CATEGORIA,CATEGORIA) VALUES('','$categoria')");
    if($sql){
        echo'registrado'; 
    }else{
        echo'error';
    }
}


}


?>

