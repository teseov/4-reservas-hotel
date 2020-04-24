<?php

Class ControladorTarifa{

/*==================================
muestra tarifa
================================*/

static public function ctrMostrartarifa(){

    $tabla = "tarifa";

    $respuesta = ModeloTarifa::mdlMostrarTarifa($tabla);
    
    return $respuesta;


}

}