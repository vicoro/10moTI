<?php

class ControladorProductos{

    /*================================
    MOSTRAR PRODUCTOS 
    ================================*/

    static public function ctrMostrarProductos($item, $valor){

        $tabla = "productos";

        $respuesta = ModeloProductos::mdlMostrarProductos($tabla, $item, $valor);

        return $respuesta;

    }
}
