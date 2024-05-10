<?php  

session_start();
$usuario= $_SESSION['username'];
echo $pass= $_SESSION['pass'];

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
   

    <nav class="navbar dark navbar-expand-lg bg-body-tertiary" style="background-color: #e3f2fd;">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><?php echo $usuario; ?></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
      <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            INVENTARIO
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="addproducto.php">PRODUCTO</a></li>
            <li><a class="dropdown-item" href="consulta.php">CONSULTAR </a></li>
           
           
            
          </ul>
        </li>
       
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           REPORTE
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">NOTA DE ENTREGA</a></li>
            <li><a class="dropdown-item" href="#">NOTA DE RECEPCION</a></li>
            <li><a class="dropdown-item" href="#">NOTA DE TRASLADO</a></li>
            <li><a class="dropdown-item" href="#">PRODUCTOS</a></li>
            <li><a class="dropdown-item" href="#">MARCA</a></li>
            <li><a class="dropdown-item" href="#">CATEGORIA</a></li>
            
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           DESPACHOS
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">NACIONALES</a></li>
            <li><a class="dropdown-item" href="#">DELIVERYS</a></li>
            <li><a class="dropdown-item" href="#">PICK UP</a></li>
           
            
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
          ALMACENE
          </a>
          <ul class="dropdown-menu">
            
            <li><a class="dropdown-item" href="#">CONSULTAR</a></li>
         
            
          </ul>
        </li>




        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
     USUARIO
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="nuevo_usu.php">NUEVO</a></li>
            <li><a class="dropdown-item" href="#">ADMINSITRAR</a></li>
           
            <li><a class="dropdown-item" href="salida.php">SALIR</a></li>
         
            
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
          DELIVERY
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">NUEVO</a></li>
            <li><a class="dropdown-item" href="#">ADMINSITRAR</a></li>
           
         
            
          </ul>
        </li>
      </ul>
    
    </div>
  </div>
</nav>
    
</body>
</html>