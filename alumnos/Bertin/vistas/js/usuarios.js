/*=============================================
subir fotos
=============================================*/
$(".nuevaFoto").change(function(){
    var imagen  = this.files[0];
    /*=============================================
    formato de imagen
    =============================================*/
    if (imagen["type"] != "image/jpeg" && imagen["type"] != "image/png") {
        $(".nuevaFoto").val("");
        swal({
            type: "error",
            title: "error al subir la imagen",
            showConfirmButton: true,
            confirmButtonText: "¡Cerrar!",
        
        })
    } else if (imagen["size"] > 2000000) {
        swal({
            type: "error",
            title: "error al subir la imagen",
            text: "¡la imagen debe pesar menos de 2mb!",
            showConfirmButton: true,
            confirmButtonText: "¡Cerrar!",
        
        }) 
    }else{
       var datosImagen = new FileReader;
       datosImagen.readAsDataURL(imagen);
       $(datosImagen).on("load", function(event){
        var rutaImagen = event.target.result;
        $(".previsualizar").attr("src", rutaImagen);
       })
    }
})