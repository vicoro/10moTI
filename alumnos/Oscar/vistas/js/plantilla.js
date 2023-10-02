/*================================
Sidebar Menu
================================*/
$('.sidebar-menu').tree()

/*================================
DATA TABLE
================================*/

$(".tablas").DataTable({

    "language":{

        "lengthMenu": "Mostrar _MENU_ Registros por página",
        "info": "Mostrando pagina _PAGE_ de _PAGES_",
        "infoEmpty": "No hay registros disponibles",
        "infoFiltered":"(filtrada de _MAX_ registros)",
        "loadingRecords": "Cargando...",
        "processing": "Procesando...",
        "search": "Buscar:",
        "zeroRecords": "No se encontraron registros coincidentes",
        "paginate": {
            "next": "siguiente",
            "previous": "Anterior"

        }

    }


});
