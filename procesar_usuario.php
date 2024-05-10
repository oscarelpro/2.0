<?php
include 'conexion.php';


$usuario=$_POST['usuario'];
$pass=$_POST['pass'];
$tipo=$_POST['id_rol'];
$respuesta=$_POST['respuesta'];
$pregunta=$_POST['pregunta'];
//validacion de usuario 


$sql=mysqli_query($conex,("SELECT usuario FROM tbl_usuario WHERE usuario='$usuario'"));
if(mysqli_num_rows($sql)>0){
    echo'ya el usuario se encuentra registrado';
}else{
    //sino exite el usuario en este caso se procede al insert 
    $sql2=mysqli_query($conex,("INSERT INTO tbl_usuario(id_usuario,usuario,pass,fk_rool,pregunta,respuesta) VALUES('','$usuario','$pass','$tipo','$pregunta','$respuesta')"));
  if($sql2){
    echo 'bien hecho ';

  }else{
    echo 'algo salio mal ';
  }
}



?>