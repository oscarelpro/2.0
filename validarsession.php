<?php
include 'conexion.php';
session_start();

$usuario=$_POST['usuario'];
$pass=$_POST['pass'];




  //validacion de que los campos no esten vacios
    
//evitar campos vacios
if(empty($usuario)){
    echo"<p class='error'>*agrega el usuario</p>";
}else{
//evitar campos de longitud mayor a 9
    if(strlen($usuario)>9){
        echo"<p class='error'>*para el campo usuario solo 9</p>";

    }else{
   if(empty($pass)){
       echo"<p class='error'>*agrega el usuario</p>";
   }else{
       if(strlen($pass)>9){
           echo"<p class='error'>*para el campo clave solo 9</p>";
       }
    
        }
    
   }
}




//verificacion de que exista el usuario  y del tipo de usuario  usuario
$validacion_usuarios=mysqli_query($conex,"SELECT * from tbl_usuario where usuario='$usuario' AND pass='$pass' ");
if(mysqli_num_rows($validacion_usuarios)==1){
    //si esta consulta devuelve un resultado igual a uno quiere decir que el usuario se encuentra registrado 
    //haciendo queinicie la session  
    

    //validar sesiones por tipo de usuario 
     while($var1=mysqli_fetch_array($validacion_usuarios)){
      switch ($var1[3]) {
        case '1':
            
            $_SESSION['username'];
             $_SESSION['pass'];
            echo'es administrador';
            header('location:menu_admin.php');
            break;
        
        case '2':
            $_SESSION['username']=$usuario;
            $_SESSION['pass']=$pass;
            $_SESSION['id']=$var1[0];
            echo'es usuario';
            header('location:menu_usuario.php');
            break;
        case '3':
            $_SESSION['username']=$usuario;
            echo 'es master';
            header('Location:menu.php');
      }
    }




} 



?>