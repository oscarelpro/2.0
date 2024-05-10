<?php
include 'conexion.php';
session_start();
//CON ESTA VARIABLE PODRE COMPRARAR SI LA CLAVE INGRESADA POR USUARIO ES IGUAL QUE LA DE LA BD
$original=$_POST['pass_actu'];
$pass1=$_POST['pass1'];
$pass2=$_POST['pass2'];
//aqui se encuentra el id del usaurio el cual servira para poder hacer la actualizacion 
$id=$_SESSION['id'];

//aqui se encuentra la clave del usuario 
$pass=$_SESSION['pass'];


///aqui se ferifica la clave (entiendase como  que se pide ingresar manualmente una clave para ver si conincide en bd)
//de ser positivo se ejecuta el script de actualizacion de la clave 
if($pass==$original){
  if($pass1==$pass2){
    $updatepass=mysqli_query($conex,"UPDATE tbl_usuario SET pass='$pass2' WHERE id_usuario='$id'");
    if($updatepass){
   
         print"<script>alert('actualizacion exitosa ');
        window.location.href='inicio.php';
        </script>";
        exit;
      }
  }else{
    print"<script>alert('las claves no coinciden  ');
        window.location.href='admin_pass.php';
        </script>";
        exit;
  }


}






?>