<?php

require_once "../controladores/productos.controlador.php";
require_once "../modelos/productos.modelo.php";

require_once "../controladores/categorias.controlador.php";
require_once "../modelos/categorias.modelo.php";

class TablaProductos{

    /*======================================
    MOSTRAR LA TABLA DE PRODUCTOS
    ====================================== */

    public function mostrarTablaProductos(){

        $item = null;
        $valor = null;

        $productos = ControladorProductos::ctrMostrarProductos($item, $valor);

        var_dump($productos);

        $datosJson = '{
          "data": [
              [
                  "1",
                  "vistas/img/productos/105.png",
                  "101",
                  "Aspiradora Industrial",
                  "Taladros",
                  "30",
                  "$ 30",
                  "$ 30",
                  "2017-12-22 11:32:49",
                  "botones"
              ],
              [
                "2",
                "vistas/img/productos/105.png",
                "102",
                "Plato flotante",
                "Taladros",
                "45",
                "$ 30",
                "$ 30",
                "2017-12-22 11:32:49",
                "botones"
            ]
          ]
      }';
      
      echo $datosJson;
      
              
    }


}

/*======================================
ACTIVAR LA TABLA DE PRODUCTOS
====================================== */
$activarProductos = new TablaProductos();
$activarProductos -> mostrarTablaProductos();

?>
