/*========================
EDITAR CATEGORIA
=========================*/

$(document).on("click", ".btnEditarCategoria", function(){
    
    var idCategoria = $(this).attr("idCategoria");

    var datos = new FormData();
    datos.append("idCategoria", idCategoria);

    $.ajax({
        url: "ajax/categorias.ajax.php",
        method: "POST",
        data: datos,
        cache: false,
        contentType: false,
        processData: false,
        dataType: "json",
        success: function(respuesta){

           $("#editarCategoria").val(respuesta["categoria"]);
           $("#idCategoria").val(respuesta["id"]);

            
        }

    })

})
/*========================
Eliminar CATEGORIA
=========================*/
$(".btnEliminarCategoria").click(function(){
var idCategoria = $(this).attr("idCategoria");
swal({
    title: '¿Estas seguro de eliminar la categoria',
    text:"¡Si no estas puedes cancelar la accion!",
    type:'warning',
    showCancelButton:true,
    confirmButtonColor:'#3085d6',
    cancelButtonColor:'#d33',
    cancelButtonText:'cancelar',
    confirmButtonText: 'Si,borrar categoria'
}).then((result)=>{
    if (result.value) {
        window.location = "index.php?categorias&idCategoria="+idCategoria;
    }
})


})