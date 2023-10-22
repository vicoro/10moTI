$(".nuevaFoto").change(function(){
    var imagen = this.files[0];
    
    if(imagen["type"] != "image/jpeg" && imagen["type"] != "image/png"){
        $(".nuevaFoto").val("");
        swal.fire({
                title: "Error al subir la imagen",
                text: "¡La imagen debe estar en formato JPG o PNG!",
                icon: "error",
                confirmButtonText: "¡Cerrar!"
             });

    }else if(imagen["size"] > 2000000){
        $(".nuevaFoto").val("");
        swal.fire({
                title: "Error al subir la imagen",
                text: "¡La imagen no debe pesar mas de 2MB!",
                icon: "error",
                confirmButtonText: "¡Cerrar!"
             });

    }else{
        var datosImagen = new FileReader;
        datosImagen.readAsDataURL(imagen);
        $(datosImagen).on("load", function(event){
            var rutaImagen = event.target.result;
            $(".previsualizar").attr("src", rutaImagen)

        })

    }
})

$(".btnEditarUsuario").click(function(){
    var idUsuario = $(this).atr("idUsuario")
    var datos = new FormData();
   $.ajax({
    url:"ajax/usuarios.ajax.php",
        method: "POST",
        data: datos,
        cache: false,
        contentType: false,
        processData: false,
        dataType: "json",
        success: function(respuesta){
            $("#editarNombre").val(respuesta["nombre"]);
            $("#editarUsuario").val(respuesta[ "usuario"]);
            $("#editarPerfil").html(respuestal["perfil" ]);
            $("#editarPerfil").val(respuestal["perfil" ]);
            $("#passwordActual").val(respuestal["password" ]);

            if (respuesta["foto"] != "") {
                $(".previsualizar").attr("src", respuesta("foto"))
            }
            
        }
       });
     })
