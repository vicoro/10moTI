<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link rel="stylesheet" href="css/estilo.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <link rel="stylesheet" href="vistas/plugins/estilo.css">
</head>
<body>
<section class="vh-100">
    <div class="container-fluid h-custom">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-md-9 col-lg-6 col-xl-5">
                <img src="vistas/img/plantilla/login.png" class="img-fluid" alt="Sample image">
            </div>
            <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
                <form method="post">
                    <div class="divider d-flex align-items-center my-4">
                        <p class="text-center fw-bold mx-3 mb-0">¡INGRESA AL SISTEMA!</p>
                    </div>

                    <!-- Usuario input -->
                    <div class="form-outline mb-4">
                        <input type="text" id="user" class="form-control form-control-lg" placeholder="Ingresa tu usuario" name="ingUsuario" required />
                        <label class="form-label" for="user">Usuario</label>
                    </div>

                    <!-- Contraseña input -->
                    <div class="form-outline mb-3">
                        <input type="password" id="password" class="form-control form-control-lg" placeholder="Ingresa contraseña" name="ingPassword" required />
                        <label class="form-label" for="password">Contraseña</label>
                    </div>

                   

                    <div class="text-center text-lg-start mt-4 pt-2">
                        <button type="submit" class="btn btn-primary btn-lg" style="padding-left: 2.5rem; padding-right: 2.5rem;" id="ingresar">INGRESAR</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary" id="copyright">
        <!-- Copyright -->
        <div class="text-white mb-3 mb-md-0">
            Copyright © 2023. Todos los derechos reservados.
        </div>
        <!-- Copyright -->
    </div>
</section>

<?php
    $login = new ControladorUsuarios();
    $login->ctrIngresoUsuario();
?>

</body>
</html>

