<?php  
//MODULO DE ADMINSITRACION DE USUARIO (MODIFICAR LA CLAVE DE USUARIO )
session_start();
include 'conexion.php';
include 'menu_usuario.php';
 /*
 $id=$_SESSION['id'];
echo $id;
 $rastreo=$_SESSION['username'];
 echo $rastreo;

 $pass=$_SESSION['pass'];
 echo "hola".$pass;*/
?>
<br><br><br>
<center>

<div class="card border-primary mb-3" style="max-width: 18rem;">
  <div class="card-header">CAMBIO DE  CLAVE</div>
  <div class="card-body text-primary">
  <form action="valida2.php" method="POST">  

  <input type="text" class="form-control" placeholder="ingrese clave actual" name="pass_actu">
  <br>
    <input type="text" class="form-control"placeholder="ingrese clave nueva" name="pass1">
    <br>
    <input type="text" class="form-control"placeholder="ingrese clave nueva" name="pass2">
    <br>
    <input type="submit"class="form-control" value="ACTUALIZAR" name='procesar'>
    </form>
  </div>

</center>

