<div class="content-wrapper">

  <section class="content-header">

    <h1>
      
      Administrar Categorías
    
    </h1>

    <ol class="breadcrumb">
      
      <li><a href="inicio"><i class="fa fa-dashboard"></i> Inicio</a></li>
      
      <li class="active">Administrar Categorías</li>

    </ol>

  </section>


  <section class="content">

    <div class="box">

      <div class="box-header with-border">
        
        <button class="btn btn-primary" data-toggle="modal" data-target="#modalAgregarCategoria">

          Agregar CategorÍa

        </button>


      </div>

      <div class="box-body">

        <table class="table table-bordered table-striped dt-responsive tablas">

          <thead>

            <tr>

              <th style="width:10px;">#</th>
              <th>Categoria</th>
              <th>Acciones</th>

            </tr>

          </thead>

          <tbody>

          <?php

              $item = null;
              $valor = null;

              $categorias = ControladorCategoias::ctrMostrarCategorias($item, $valor);

              foreach ($categorias as $key => $value) {
                
                echo'<tr>

                <td>'.($key+1).'</td>

                <td class="text-uppercase">'.$value["categoria"].'</td>   

                <td>

                    <div class="btn-group">

                      <button class="btn btn-warning btnEditarCategoria" idCategoria="'.$value["id"].'" data-toggle="modal" data-target="#modalEditarCategoria"><i class="fa fa-pencil"></i></button>

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
---------MODAL ATEGORIAS------------
==================================-->

<!-- Modal -->
<div class="modal fade" id="modalAgregarCategoria" role="dialog">

  <div class="modal-dialog">

    <div class="modal-content">

      <form role="form" method="post">

      <!--===========================================
        CABEZA DEL MODAL
      ===============================================-->

        <div class="modal-header" style="background:#3c8dbc; color:white;">

        <button type="button" class="close" data-dismiss="modal" aria-label="Close">&times;</button>
        
          <h5 class="modal-title">Agregar Categoría</h5>
          
        </div>

      <!--===========================================
        CUERPO DEL MODAL
      ===============================================-->

        <div class="modal-body">

          <div class="box-body">
            <!--Nombre--------->
            <div class="form-group">

                <div class="input-group">

                    <span class="input-group-addon"><i class="fa fa-th"></i></span>

                    <input type="text" class="form-control input-lg" name="nuevaCategoria" placeholder="Ingresar categoría" required>

                </div>

            </div>          

          </div>

        </div>

        <div class="modal-footer">

          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>

          <button type="submit" class="btn btn-primary">Guardar categoría</button>

        </div>

      <?php

        $crearCategoria = new ControladorCategoias();
        $crearCategoria -> ctrCrearCategoria();

      ?>

      </form>  

    </div>

  </div>

</div>

<!--==============================
---------EDITAR ATEGORIAS------------
==================================-->

<!-- Modal -->
<div id="modalEditarCategoria" class="modal fade" role="dialog">

  <div class="modal-dialog">

    <div class="modal-content">

      <form role="form" method="post">

      <!--===========================================
        CABEZA DEL MODAL
      ===============================================-->

        <div class="modal-header" style="background:#3c8dbc; color:white;">

        <button type="button" class="close" data-dismiss="modal" aria-label="Close">&times;</button>
        
          <h5 class="modal-title">Editar Categoría</h5>
          
        </div>

      <!--===========================================
        CUERPO DEL MODAL
      ===============================================-->

        <div class="modal-body">

          <div class="box-body">
            <!--Nombre--------->
            <div class="form-group">

                <div class="input-group">

                    <span class="input-group-addon"><i class="fa fa-th"></i></span>

                    <input type="text" class="form-control input-lg" name="editarCategoria" id="editarCategoria" required>

                    <input type="hidden" name="idCategoria" id="idCategoria" required>

                </div>

            </div>          

          </div>

        </div>

        <div class="modal-footer">

          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>

          <button type="submit" class="btn btn-primary">Guardar cambios</button>

        </div>

      <?php

        $editarCategoria = new ControladorCategoias();
        $editarCategoria -> ctrEditarCategoria();

      ?>

      </form>  

    </div>

  </div>

</div>

