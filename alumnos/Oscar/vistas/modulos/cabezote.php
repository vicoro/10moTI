<header class="main-header">

    <!--=============================
        LOGOTIPO
    =============================== -->
    <a href="inicio" class="logo">

        <!-- logo mini -->
        <span class="logo-mini">

            <b style="font-size:40px">C</b>

        </span>

        <!-- logo mini -->

        <span class="logo-lg">

            <b style="font-size:40px">C</b><b style="font-size:40px">IMA</b>

        </span>

    </a>

<!--=============================
        BARRA DE NAVEGACIÓN
    =============================== -->
    <nav class="navbar navbar-static-top" role="navigation">

    <!--Boton de navegacion-->

        <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">

            <span class="sr-only">Toggle Navigation</span>

        </a>

    <!--perfil de usuario-->

        <div class="navbar-custom-menu">

            <ul class="nav navbar-nav">

                <li class="dropdown user user-menu">

                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">

                        <?php

                            if($_SESSION["foto"] != ""){

                                echo '<img src="'.$_SESSION["foto"].'" class="user-image">';

                            }else{

                                echo '<i class="fa-solid fa-face-smile" style="font-size:15px"></i>';


                            }

                        ?>

                        <span class="hidden-xs"><?php echo $_SESSION["nombre"]; ?></span>

                    </a>

                            <!--Dropdown-toggle-->

                    <ul class="dropdown-menu">

                        <li class="user-body">

                            <div class="pull-right">

                                <a href="salir" class="btn btn-default btn-flat">Salir</a>

                            </div>
                        </li>
                    </ul>

                </li>

            </ul>

        </div>

    </nav>

</header>