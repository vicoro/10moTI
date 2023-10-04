 <div class="back">
    <div class="login-box">

      <div class="login-logo">

        <img src="vistas/img/plantilla/logo2.jpeg" class="img-fluid">

      </div>

      <div class="login-box-body">

        <p class="login-box-msg">INGRESAR AL SISTEMA</p>

        <form method="post">

          <div class="form-group has-feedback">

            <input type="Text" class="form-control" placeholder="Usuario" id="input1" name="ingUsuario" required>

            <span class="glyphicon glyphicon-user form-control-feedback"></span>

          </div>

          <div class="form-group has-feedback">

            <input type="password" class="form-control" placeholder="Contraseña" id="input2" name="ingPassword" required>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>

          </div>
          <div class="row">

            <div class="col-xs-12">

              <button type="submit" id="ingresar" class="btn btn-primary btn-block btn-flat">Ingresar</button>

            </div>

          </div>

          <?php 
          
            $login = new ControladorUsuarios();
            $login -> ctrIngresoUsuario();
          ?>

        </form>

      </div>

    </div>
  </div>