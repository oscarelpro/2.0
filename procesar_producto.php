<?php 
include 'conexion.php';
 //recepcion de datos del formulario 
$SKU=$_POST['SKU'];
$PRODUCTO=$_POST['PRODUCTO'];
$ID_MARCA=$_POST['ID_MARCA'];
$ID_ALMACEN=$_POST['ID_ALMACEN'];
$DETALLE=$_POST['DETALLE'];
$ID_CATEGORIA=$_POST['ID_CATEGORIA'];
$PRECIO=$_POST['PRECIO'];
$STOCK=$_POST['CANTIDAD'];
//CONSULTAMOS EL PRODUCTO POR SKU

$verifica=mysqli_query($conex,"SELECT sku FROM tbl_producto where SKU='$SKU'");
if(mysqli_num_rows($verifica)==1){
    echo 'el codigo ya existe';
}else{

$insertar=mysqli_query($conex,"INSERT INTO tbl_producto (id_producto,sku,p_nombre,precio,stock,marca,categoria,almacen,detalle) VALUE ('$PRODUCTO','$SKU','$PRODUCTO','$PRECIO','$STOCK','$ID_MARCA','$ID_CATEGORIA','$ID_ALMACEN','$DETALLE') ");
if($insertar){
    echo'bien hecho';
}else{
    echo 'eerror';
    echo $SKU;
    echo $PRODUCTO;
    echo $ID_MARCA;
    echo $ID_ALMACEN;
    echo $DETALLE;
    echo $ID_CATEGORIA;
    echo $PRECIO;
    echo $STOCK;

}
}


?>