$(buscar_datos());

function buscar_datos(consulta){
    $.ajax({
        url: 'busqueda.php',
        type: 'POST)',
        dataType: 'html',
        data: {consulta: consulta},
    })
    .done(function(respuesta){
        $('#datos').html(repuesta);
    })
    .fail(function(){
        console.log("error");
    })
}