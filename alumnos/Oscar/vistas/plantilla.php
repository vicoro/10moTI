

    <?php
            require "header.php";

    if(isset($_SESSION["iniciarSesion"]) && $_SESSION["iniciarSesion"] == "ok" )
    {
        echo '<div class="wrapper">';



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
               $_GET["ruta"] == "reportes" ||
               $_GET["ruta"] == "salir"){

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

        echo '</div>';
    }else{
        include "modulos/login.php";
    }    

    ?>


        <script src="vistas/js/plantilla.js"></script>
        <script src="vistas/js/usuarios.js"></script>
    </body>
</html>


