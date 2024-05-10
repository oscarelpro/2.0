<?php
error_reporting(0);

if(isset($_POST['submit'])){
  session_start();
$usuario=$_POST['usuario'];
$pass=$_POST['pass'];
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <title>Document</title>
</head>
<body>
    <div class="container">
       <!----la   funcion $_server que esta en el action me siver para hacer peticiones en la misma pagina
       esto con el fin de recargar ma pagina lo menos posibles,
       >como funciona?
       
       hace referencia a ota pagina la cual se encarga de generar la consultas pertinentes para asi 
       devolverno un resultado  en el mismo formulario
       
       ----> 
    <form method="POST" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']);?>">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">usuario</label>
    <input type="text" class="form-control"  name="usuario" aria-describedby="emailHelp">
    
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" name="pass" id="exampleInputPassword1">
  </div>
  <?php  
  
  
  include 'validarsession.php';
  ?>
  <button type="submit" class="btn btn-primary">ENTRAR</button>
</form>
    </div>

</body>
</html>