<div class="content-wrapper">

    <section class="content-header">
      <h1>
        Adninistrar usuarios
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

        <div class="box-body">
              <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal-default">
               Agregar usuarios
              </button>

              
          
        </div>
        <div class="box-body">
          <table class="table table-bordered table-striped dt-responsive tabla">
            <thead>
              
              <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>Usuario</th>
                <th>Foto</th>
                <th>Perfil</th>
                <th>Estado</th>
                <th>Ultimo login</th>
                <th>Acciones</th>
              </tr>

            </thead>

            <tbody>
            <tr>
                <td>1</td>
                <td>Usuario Administrador</td>
                <td>Admin</td>
                <td><img src="vistas/img/usuarios/default/anonymus.png" class="img-thumbnail" width="40px"></td>
                <td>Administrador</td>
                <td><button class="btn btn-success btn-xs">Activado</button></td>
                <td>30/09/2023 01:30:50</td>
                <td>
                  
                <div class="btn-group">
                  <button class="btn btn-warning"><i class="fa fa-pencil"></i></button>
                  <button class="btn btn-danger"><i class="fa fa-times"></i></button>
                </div>
                </td>
              </tr>


              <tr>
                <td>2</td>
                <td>Usuario Administrador</td>
                <td>Admin</td>
                <td><img src="vistas/img/usuarios/default/anonymus.png" class="img-thumbnail" width="40px"></td>
                <td>Administrador</td>
                <td><button class="btn btn-success btn-xs">Activado</button></td>
                <td>30/09/2023 01:30:50</td>
                <td>
                  
                <div class="btn-group">
                  <button class="btn btn-warning"><i class="fa fa-pencil"></i></button>
                  <button class="btn btn-danger"><i class="fa fa-times"></i></button>
                </div>
                </td>
              </tr>


              <tr>
                <td>3</td>
                <td>Usuario Administrador</td>
                <td>Admin</td>
                <td><img src="vistas/img/usuarios/default/anonymus.png" class="img-thumbnail" width="40px"></td>
                <td>Administrador</td>
                <td><button class="btn btn-danger btn-xs">Desctivado</button></td>
                <td>30/09/2023 01:30:50</td>
                <td>
                  
                <div class="btn-group">
                  <button class="btn btn-warning"><i class="fa fa-pencil"></i></button>
                  <button class="btn btn-danger"><i class="fa fa-times"></i></button>
                </div>
                </td>
              </tr>


            </tbody>

          </table>
        </div>
        <!-- /.box-body -->
        
        </div>

      </div>
      <!-- /.box -->

    </section>
    <!-- /.content -->
  </div>
  </div>
  <!-- /.content-wrapper -->

   <!-- Modal -->
   <div class="modal fade" id="modal-default">
          <div class="modal-dialog">
            <div class="modal-content">
              <form role="form" method="post" enctype="multipart/from-data" >
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Agrgar usuario</h4>
              </div>
              <div class="modal-body">
              <div class="box-body">

              <div class="form-group">
              <div class="input-group">
              <span class="input-group-addon"><i class="fa fa-user"></i></span>
              <input type="text" class="form-control input-lg" name="nuevonombre" placeholder="Ingresar nombre" required>
              </div>
              </div>
            
              <div class="form-group">
              <div class="input-group">
              <span class="input-group-addon"><i class="fa fa-key"></i></span>
              <input type="text" class="form-control input-lg" name="nuevousuario" placeholder="Ingresar usuario" required>
              </div>
              </div>

              <div class="form-group">
              <div class="input-group">
              <span class="input-group-addon"><i class="fa fa-lock"></i></span>
              <input type="password" class="form-control input-lg" name="nuevopassword" placeholder="Ingresar contraseña" required>
              </div>
              </div>

              <div class="form-group">
              <div class="input-group">
              <span class="input-group-addon"><i class="fa fa-users"></i></span>
              <select class="form-control input-lg" name="nuevoperfil">
                <option value="Administrador">Administrador</option>
                <option value="Especial">Especial</option>
                <option value="Vendedor">Vendedor</option>
              </select>
              </div>
              </div>

              <div class="form-group">
                <div class="panel">Subir foto</div>
                <input type="file" id="nuevafoto" name="nuevafoto" >
                <p class="help-block">Peso maximo de la foto 200 MB</p>
                <img src="vistas/img/usuarios/default/anonymus.png" class="img-thumbnail" width="100px">

              </div>

              </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary">Guardar usuarios</button>
              </div>
              </form>
              </div>

        </div>
        </div>
 