<?php

Class ControladorPrecios{

/*==================================
muestra banner
================================*/

static public function ctrMostrarPrecios(){

    $tabla = "precios";

    $respuesta = ModeloPrecios::mdlMostrarPrecios($tabla);
    
    return $respuesta;


}

}