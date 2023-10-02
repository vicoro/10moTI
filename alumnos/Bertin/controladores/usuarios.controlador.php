<?php

class ControladorUsuarios{

	/*=============================================
	INGRESO DE USUARIO
	=============================================*/

	static public function ctrIngresoUsuario(){

		if(isset($_POST["ingUsuario"])){

			if(preg_match('/^[a-zA-Z0-9]+$/', $_POST["ingUsuario"]) &&
			   preg_match('/^[a-zA-Z0-9]+$/', $_POST["ingPassword"])){

				$encriptar = crypt($_POST["nuevoPassword"], '$2a$07$usesomesillystringforsalt$');


				$tabla = "usuarios";

				$item = "usuario";
				$valor = $_POST["ingUsuario"];

				$respuesta = ModeloUsuarios::MdlMostrarUsuarios($tabla, $item, $valor);

				if($respuesta["usuario"] == $_POST["ingUsuario"] && $respuesta["password"] == $encriptar ){

					$_SESSION["iniciarSesion"] = "ok";
					$_SESSION["id"] = $respuesta["id"];
					$_SESSION["nombre"] = $respuesta["nombre"];
					$_SESSION["usuario"] = $respuesta["usuario"];
					$_SESSION["foto"] = $respuesta["foto"];
					$_SESSION["perfil"] = $respuesta["perfil"];

					echo '<script>

						window.location = "inicio";

					</script>';

				}else{

					echo '<br><div class="alert alert-danger">Error al ingresar, vuelve a intentarlo</div>';

				}

			}	

		}

	}
	/*=============================================
	crear DE USUARIO
	=============================================*/

	static public function ctrCrearUsuario(){
		if (isset($_POST["nuevoUsuario"])) {
			if(preg_match('/^[a-z-A-Z0-9ñÑáéíóúÁÉÍÓÚ ]+$/',$_POST[nuevoNombre]) && 
			preg_match('/^[a-z-A-Z0-9]+$/',$_POST[nuevoUsuario]) && 
			preg_match('/^[a-z-A-Z0-9]+$/',$_POST[nuevoPassword])){

				/*=============================================
				crear DE USUARIO
				=============================================*/
				$ruta="";
				if (isset($_FILES["nuevaFoto"]["tmp_name"])) {
					list($ancho, $alto) = getimagesize($_FILES["nuevaFoto"]["tmp_name"]);
					$nuevoAncho = 500;
					$nuevoAlto = 500;
				
					/*=============================================
				crear DE USUARIO
				=============================================*/
				$directorio = "vistas/img/usuarios/".$_POST["nuevoUsuario"];
				mkdir($directorio, 0755);

				if ($_FILES["nuevaFoto"]["type"] == "imagen/jpeg") {
					/*=============================================
					crear DE USUARIO
					=============================================*/
					$aleatorio = mt_rand(100,999);
					$ruta = "vistas/img/usuarios".$_POST["nuevoUsuario"]."/".$aleatorio.".jpg";
					$origen = imagecreatefromjpeg($_FILES["nuevoFoto"]["tmp_name"]);
					$destino = imagecreatetruecolor($nuevoAncho, $nuevoAlto);
					imagecopyresized($destino, $origen, 0, 0, 0, 0, $nuevoAncho, $nuevoAlto, $ancho, $ancho);
					imagejpeg($destino, $ruta);
				}
			
				}

				$tabla = "usuarios";
				$encriptar = crypt($_POST["nuevoPassword"], '$2a$07$usesomesillystringforsalt$');

				$datos = array("nombre" => $_POST["nuevoNombre"],
				"usuario" => $_POST["nuevoUsuario"],
				"password" => $_POST["nuevoPassword"],
				"perfil" => $_POST["nuevoPerfil"],
				"foto" => $ruta);

				$respuesta = ModeloUsuarios::mdlIngresarUsuario($tabla, $datos);
				if ($respuesta == "ok") {
					echo '<script>
				
					swal({
						type: "success",
						title: "¡El usuario ha sido guardado!",
						showConfirmButton: true,
						confirmButtonText: "Cerrar",
						closeOnConfirm: false
					
					}).then((result)=>{
					
						if(result.value){
							window.location = "usuarios";
						}
					}));
					</script>';
				}
				
			}else{
			echo '<script>
			Swal({
				type: "error",
				title: "¡El usuario no puede ir vacio o llevar caracteres especiales!",
				showConfirmButton: true,
				confirmButtonText: "Cerrar",
				closeOnConfirm: false
			
			}).then((result)=>{
			
				if(result.value){
					window.location = "usuarios";
				}
			
			
			}));
			</script>';
		}
		}
	}
	/**/
	static public function ctrMostrarUsuarios($item, $valor){
		$tabla = "usuarios";
	$respuesta = ModeloUsuarios::MdlMostrarUsuarios($tabla, $item, $valor);
	return $respuesta;
	}
}

	


