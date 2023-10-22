<?php

class TablaProductos{
    /*--======================================
        MOSTRAR LA TABLA DE PRODUCTOS
    ====================================== --*/

    public function mostrarTablaProductos(){

        echo '{
            "data": [
              [
                "1",
                "",
                "Edinburgh",
                "5421",
                "2011/04/25",
                "$320,800"
              ],
              [
                "2",
                "Accountant",
                "Tokyo",
                "8422",
                "2011/07/25",
                "$170,750"
              ],
            ]
          }';

    }
}

/*--======================================
    ACTIVAR LA TABLA DE PRODUCTOS
====================================== --*/

$activarProductos = new TablaProductos();
$activarProductos -> mostrarTablaProductos();