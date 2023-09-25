

    <?php
        require "header.php";

        /* ===================================
        CABEZOTE
        ======================================= */        

        include "modulos/cabezote.php";

        /* ===================================
        MENU
        ======================================= */

        include "modulos/menu.php";

        /* ===================================
        CONTENIDO
        ======================================= */

        if(isset($_GET["ruta"])){
            
            if($_GET["ruta"] == "inicio" ||
               $_GET["ruta"] == "usuarios" ||
               $_GET["ruta"] == "categorias" ||
               $_GET["ruta"] == "productos" ||
               $_GET["ruta"] == "clientes" ||
               $_GET["ruta"] == "ventas" ||  
               $_GET["ruta"] == "crear-venta" ||
               $_GET["ruta"] == "reportes"){

                include "modulos/".$_GET["ruta"].".php";

            }else{

              include "modulos/404.php";

            }

        }else{

            include "modulos/inicio.php";

        }

        /* ===================================
        FOOTER
        ======================================= */

        include "modulos/footer.php";

        require "footer.php";

    ?>


