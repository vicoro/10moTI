<div class="content-wrapper">

  <section class="content-header">
    
    <h1>
      
      Administrar usuarios
    
    </h1>

    <ol class="breadcrumb">
      
      <li><a href="inicio"><i class="fa fa-dashboard"></i> Inicio</a></li>
      
      <li class="active">Administrar usuarios</li>
    
    </ol>

  </section>

  <!-- Main content -->
  <section class="content">

    <!-- Default box -->
    <div class="box">
      <div class="box-header with-border">
      <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalAgregarUsuario">
        ingresar Usuario
      </button>
      </div>
      <div class="box-body">
        <table  class="table table-bordered table-striped tablas dt-responsive">
          <thead>
            <tr>
              <th style="width:10px">#</th>
              <th>Nombre</th>
              <th>Usuario</th>
              <th>Foto</th>
              <th>Perfil</th>
              <th>Estado</th>
              <th>Ultimo login </th>
              <th>Acciones</th>
            </tr>
          </thead>
          <tbody>

          <?php 
          $item = null;
          $valor = null;
          $usuarios = ControladorUsuarios::ctrMostrarUsuarios($item, $valor);
          foreach ($usuarios as $key => $value){
           echo  '
           <tr>
              <td>1</td>
              <td>'.$value["nombre"].'</td>
              <td>'.$value["usuario"].'</td>';

                  if ($value["foto"] != "") {
                  echo '<td><img src="'.$value["foto"].'" class="img-thumbnail" width="40px"></td>';
                }else{
                  echo '<td><img src="vistas/img/usuarios/default/user1.png" class="img-thumbnail" width="40px"></td>';
                }
                      
              
             echo ' <td><img src="vistas/img/usuarios/default/user1.png" class="img-thumbnail" width="40px"></td>
              <td>'.$value["Perfil"].'</td>
              <td><button class="btn btn-danger btn-xs" >Desactivado</button></td>
              <td>2023-12-22 12:02:32</td>
              <td><div class="btn-group">
                <button class="btn btn-warning btn-xs" ><i class="fa fa-pencil"></i></button>
                <button class="btn btn-danger btn-xs"><i class="fa fa-times"></i></button>
                </div></td>
            </tr>
            '
          }
          ?>
          </tbody>
        </table>
      </div>
      <!-- /.box-body -->
    </div>
    <!-- /.box -->

  </section>
  <!-- /.content -->
</div>
<!--===========================
Modal de usuario
============================-->
<!-- The Modal -->
<div class="modal fade" id="modalAgregarUsuario" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
    <form role="form" method="post" enctype="multipart/form-darta">
      <!--===========================
      Cabeza del modal
      ============================-->
      <div class="modal-header" style="background:#3c8dbc ; color:white;">
        <h5 class="modal-title" id="exampleModalLabel">Agregar Usuario</h5>
      </div>
      <div class="modal-body">
        <div class="box-body">
          <!--Nombre del usuario -->
          <div class="form-group">
            <div class="input-group">
              <span class="input-group-addon"><i class="fa fa-user"></i></span>
              <input type="text" class="form-control input-lg" name="nuevoNombre" placeholder="Ingresar Nombre" required>
           </div>
          </div>
          <!-- Nombre del usuario -->
          <div class="form-group">
            <div class="input-group">
              <span class="input-group-addon"><i class="fa fa-key"></i></span>
              <input type="text" class="form-control input-lg" name="nuevoUsuario" placeholder="Ingresar Usuario" required>
           </div>
          </div>
          <!-- Nombre del usuario -->
          <div class="form-group">
            <div class="input-group">
              <span class="input-group-addon"><i class="fa fa-lock"></i></span>
              <input type="password" class="form-control input-lg" name="nuevoPassword" placeholder="Ingresar Contraseña" required>
           </div>
          </div>
          <!-- Nombre del perfil -->
          <div class="form-group">
            <div class="input-group">
              <span class="input-group-addon"><i class="fa fa-users"></i></span>
              <select class="form-control input-lg" name="nuevoPerfil">
                <option value="">Selcecionar Perfil</option>
                <option value="Administrador">Administrador</option>
                <option value="Especial">Especial</option>
                <option value="Vendedor">Vendedor</option>
                
              </select>
           </div>
          </div>
          <!-- insertar foto -->
          <div class="form-group">
            <div class="panel">Subir foto</div>
            <input type="file" class="nuevaFoto" id="nuevaFoto">
            <p class="help-block">Peso Maximo de la foto 2MB</p>
            <img src="vistas/img/usuarios/default/user1.png" class="img-thumbnail previsualizar" width="40px">
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger pull-left" data-dismiss="modal">Salir</button>
        <button type="submit" class="btn btn-primary" data-dismiss="modal">Guardar Usuario</button>
      </div>
      <?php
      $crearUsuarios = new ControladorUsuarios();
      $crearUsuarios -> ctrCrearUsuario();
      
      
      ?>
    </form>
    </div>
  </div>
</div>
