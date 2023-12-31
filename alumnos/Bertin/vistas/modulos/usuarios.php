<div class="content-wrapper">
  <section class="content-header">


    <h1>
      
      Administrar Usuarios
    
    </h1>

    <ol class="breadcrumb">
      
      <li><a href="inicio"><i class="fa fa-dashboard"></i> Inicio</a></li>
      
      <li class="active">Administrar Usuarios</li>


    <h1> 
      Administrar Usuarios
    </h1>
    <ol class="breadcrumb"> 
      <li><a href="inicio"><i class="fa fa-dashboard"></i> Inicio</a></li>     
      <li class="active">Administrar Usuarios</li>

    </ol>
  </section>



  <section class="content">


  <section class="content">

    <div class="box">

      <div class="box-header with-border">

        
        <button class="btn btn-primary" data-toggle="modal" data-target="#modalAgregarUsuario">

          Agregar Usuario

        </button>



        <button class="btn btn-primary" data-toggle="modal" data-target="#modalAgregarUsuario">
         Insertar Usuario
        </button>

      </div>

      <div class="box-body">


        <table class="table table-bordered table-striped dt-responsive tablas" width="100%">


        <table class="table table-bordered table-striped dt-responsive tablas">

          <thead>

            <tr>

              <th style="width:10px;">#</th>
              <th>Nombre</th>
              <th>Usuarios</th>
              <th>Foto</th>
              <th>Perfil</th>
              <th>Estado</th>

              <th>Último login</th>

              <th>Ultimo login</th>

              <th>Acciones</th>

            </tr>

          </thead>
          <tbody>


          <?php

            $item = null;
            $valor = null;

            $usuarios = ControladorUsuarios::ctrMostrarUsuarios($item, $valor);

            foreach ($usuarios as $key => $value) {

              echo '<tr>
              
                      <td>'.($key+1).'</td>
                      <td>'.$value["nombre"].'</td>
                      <td>'.$value["usuario"].'</td>';

                      if($value["foto"] != ""){

                        echo '<td><img src="'.$value["foto"].'" class="img-thumbnail"
                        style="width:50px;"></td>';

                      }else{

                        echo '<td><img src="vistas/img/usuarios/default/anonymous.png" 
                        class="img-thumbnail" style="width:50px;"></td>';

                      }

                      
                      echo'<td>'.$value["perfil"].'</td>';

                      if($value["estado"] != 0){

                        echo '<td><button class="btn btn-success btn-xs btnActivar" idUsuario="'.$value["id"].'" estadoUsuario="0">Activado</button></td>';

                      }else{

                        echo '<td><button class="btn btn-danger btn-xs btnActivar" idUsuario="'.$value["id"].'" estadoUsuario="1">Desactivado</button></td>';

                      }
                      
                      echo '<td>'.$value["ultimo_login"].'</td>
                      <td>

                          <div class="btn-group">

                            <button class="btn btn-warning btnEditarUsuario" idUsuario="'.$value["id"].'" data-toggle="modal" data-target="#modalEditarUsuario"><i class="fa fa-pencil"></i></button> 

                            <button class="btn btn-danger btnEliminarUsuario" idUsuario="'.$value["id"].'" fotoUsuario="'.$value["foto"].'" usuario="'.$value["usuario"].'"><i class="fa fa-times"></i></button>

                          </div>

                      </td>

                    </tr>';
      
            }



          <?php
          $item = null;
          $valor = null;
          $usuarios = ControladorUsuarios::ctrMostrarUsuarios($item, $valor);
          foreach ($usuarios as $key => $value) {     
            echo ' <tr>
                  <td>1</td>
                  <td>'.$value["nombre"].'</td>
                  <td>'.$value["usuario"].'</td>';
                  if ($value["foto"] != "") {
                      echo '<td><img src="'.$value["foto"].'" class="img-thumbnail" width="40px" alt=""></td>';                   
                  }else{
                    echo '<td><img src="vistas/img/usuarios/default/anonymous.png" class="img-thumbnail" width="40px" alt=""></td>';             
                  }
                  echo '<td>'.$value["perfil"].'</td>
                  <td><button class="btn btn-success btn-xs">Activado</button></td>
                  <td>'.$value["ultimo_login"].'</td>
                  <td>
                    <div class="btn-group">
                      <button class="btn btn-warning"><i class="fa fa-pencil"></i></button>
                      <button class="btn btn-danger"><i class="fa fa-times"></i></button>
                    </div>
                  </td>
                </tr>';
             }

          ?>

          </tbody>

        </table>

      </div>


    </div>

  </section>

</div>

<!--==============================
-------------MODAL----------------
==================================-->

<!-- Modal -->
<div id="modalAgregarUsuario" class="modal fade" role="dialog">

  <div class="modal-dialog">

    <div class="modal-content">

      <form role="form" method="post" enctype="multipart/form-data">

        <!--=========================
        CABEZA DEL MODAL
        ==========================-->

        <div class="modal-header" style="background:#3c8dbc; color:white;">

        <button type="button" class="close" data-dismiss="modal" aria-label="Close">&times;</button>
        
          <h5 class="modal-title">Agregar usuario</h5>
          
        </div>

        <!--=========================
        CUERPO DEL MODAL
        ==========================-->

        <div class="modal-body">

          <div class="box-body">
            <!--Nombre--------->
            <div class="form-group">

                <div class="input-group">

                    <span class="input-group-addon"><i class="fa fa-user"></i></span>

                    <input type="text" class="form-control input-lg" name="nuevoNombre" placeholder="Ingresar nombre" required>

                </div>

            </div>

            <!--Usuario--------->

            <div class="form-group">

                <div class="input-group">

                    <span class="input-group-addon"><i class="fa fa-key"></i></span>

                    <input type="text" class="form-control input-lg" name="nuevoUsuario" placeholder="Ingresar usuario" id="nuevoUsuario" required>

                </div>

            </div>

            <!--contraseña--------->

            <div class="form-group">

                <div class="input-group">

                    <span class="input-group-addon"><i class="fa fa-lock"></i></span>

                    <input type="password" class="form-control input-lg" name="nuevoPassword" placeholder="Ingresar contraseña" required>

                </div>

            </div>

            <!--perfil--------->
            <div class="form-group">

                <div class="input-group">

                    <span class="input-group-addon"><i class="fa fa-users"></i></span>

                    <select class="form-control input-lg"name="nuevoPerfil">

                      <option value="">Seleccionar perfil</option>

                      <option value="Admininstrador">Admininstrador</option>

                      <option value="Especial">Especial</option>

                      <option value="Vendedor">Vendedor</option>

                    </select>
                  

                </div>

            </div>

            <!--foto--------->
            <div class="form-group">

                <div class="panel">SUBIR FOTO</div>

                <input type="file" class="nuevaFoto" name="nuevaFoto">

                <p class="help-block">Peso máximo de la foto 2 mb</p>

                <img src="vistas/img/usuarios/default/anonymous.png" class="img-thumbail previsualizar" width="100px">

            </div>



          </div>

        </div>

        <!--=========================
        PIE DEL MODAL
        ==========================-->


        <div class="modal-footer">

          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>

          <button type="submit" class="btn btn-primary">Guardar usuario</button>

        </div>

          <?php

            $crearUsuario = new ControladorUsuarios();
            $crearUsuario -> ctrCrearUsuario();
          
          ?>


      </form>  

    </div>

  </div>

</div>



<!--==============================
------MODAL EDITAR USUARIO--------
==================================-->

<!-- Modal -->
<div id="modalEditarUsuario" class="modal fade" role="dialog">

  <div class="modal-dialog">

    <div class="modal-content">

      <form role="form" method="post" enctype="multipart/form-data">

        <!--=========================
        CABEZA DEL MODAL
        ==========================-->

        <div class="modal-header" style="background:#3c8dbc; color:white;">

        <button type="button" class="close" data-dismiss="modal" aria-label="Close">&times;</button>
        
          <h5 class="modal-title">Editar usuario</h5>
          
        </div>

        <!--=========================
        CUERPO DEL MODAL
        ==========================-->

        <div class="modal-body">

          <div class="box-body">
            <!--Nombre--------->
            <div class="form-group">

                <div class="input-group">

                    <span class="input-group-addon"><i class="fa fa-user"></i></span>

                    <input type="text" class="form-control input-lg" id="editarNombre" name="editarNombre" value="" required>

                </div>

            </div>

            <!--Usuario--------->

            <div class="form-group">

                <div class="input-group">

                    <span class="input-group-addon"><i class="fa fa-key"></i></span>

                    <input type="text" class="form-control input-lg" id="editarUsuario" name="editarUsuario" value="" readonly>

                </div>

            </div>

            <!--contraseña--------->

            <div class="form-group">

                <div class="input-group">

                    <span class="input-group-addon"><i class="fa fa-lock"></i></span>

                    <input type="password" class="form-control input-lg" name="editarPassword" placeholder="Escriba la nueva contraseña">

                    <input type="hidden" id="passwordActual" name="passwordActual">

                </div>

            </div>

            <!--perfil--------->
            <div class="form-group">

                <div class="input-group">

                    <span class="input-group-addon"><i class="fa fa-users"></i></span>

                    <select class="form-control input-lg"name="editarPerfil">

                      <option value="" id="editarPerfil"></option>

                      <option value="Admininstrador">Admininstrador</option>

                      <option value="Especial">Especial</option>

                      <option value="Vendedor">Vendedor</option>

                    </select>
                  

                </div>

            </div>

            <!--foto--------->
            <div class="form-group">

                <div class="panel">SUBIR FOTO</div>

                <input type="file" class="nuevaFoto" id="editarFoto" name="editarFoto">

                <p class="help-block">Peso máximo de la foto 2 mb</p>

                <img src="vistas/img/usuarios/default/anonymous.png" class="img-thumbail previsualizar" width="100px">

                <input type="hidden" name="fotoActual" id="fotoActual">

            </div>



=======
    </div>
  </section>
</div>
<!--=========================
INSERATR USUARIO
==========================-->
<div id="modalAgregarUsuario" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <form role="form" method="post" enctype="multipart/form-data">
        <!--=========================
        CABEZA DEL MODAL
        ==========================-->
        <div class="modal-header" style="background:#3c8dbc; color:white">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h4 class="modal-title">Agregar Usuario</h4>
        </div>
        <!--=========================
        CUERPO DE MODAL
        ==========================-->
        <div class="modal-body">
          <div class="box-body">
          <!--NOMBRE -->
            <div class="form-group">
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                <input type="text" class="form-control input-lg" name="nuevoNombre" placeholder="Ingresar nombre" required>
              </div>
            </div>
            <!-- USUARIO -->
            <div class="form-group">
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-key"></i></span>
                <input type="text" class="form-control input-lg" name="nuevoUsuario" placeholder="Ingresar usuario" required>
              </div>
            </div>
            <!-- CONTRASEÑA -->
            <div class="form-group">
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                <input type="password" class="form-control input-lg" name="nuevoPassword" placeholder="Ingresar contraseña" required>
              </div>
            </div>
            <!-- PERFIL -->
            <div class="form-group">
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-users"></i></span>
                <select class="form-control input-lg" name="nuevoPerfil">
                  <option value="">Seleccionar perfil</option>
                  <option value="Administrador">Administrador</option>
                  <option value="Especial">Especial</option>
                  <option value="Vendedor">Vendedor</option>
                </select>
              </div>
            </div>
            <!--FOTO -->
            <div class="form-group">
              <div class="panel">SUBIR FOTO</div>
              <input type="file" class="nuevaFoto" name="nuevaFoto">
              <p class="help-block">Peso máximo de la foto 2MB</p>
              <img src="vistas/img/usuarios/default/anonymous.png" class="img-thumbnail previsualizar" width="100px">
            </div>

          </div>

        </div>


        <!--=========================
        PIE DEL MODAL
        ==========================-->


        <div class="modal-footer">

          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>

          <button type="submit" class="btn btn-primary">Guardar cambios</button>

        </div>

          <?php

            $editarUsuario = new ControladorUsuarios();
            $editarUsuario -> ctrEditarUsuario();
          
          ?>

      </form>  

        <!--=========================
        fIN DE MODAL
        ==========================-->
        <div class="modal-footer">
          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>
          <button type="submit" class="btn btn-primary">Guardar Registro</button>
        </div>

        <?php
          $crearUsuario = new ControladorUsuarios();
          $crearUsuario -> ctrCrearUsuario();
        ?>
      </form>

    </div>

  </div>


</div>

<?php

  $editarUsuario = new ControladorUsuarios();
  $editarUsuario -> ctrBorrarUsuario();

?>

</div>

