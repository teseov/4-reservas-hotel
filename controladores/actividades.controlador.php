<?php

Class ControladorActividades{

/*==================================
muestra banner
================================*/

static public function ctrMostrarActividades(){

    $tabla = "actividades";

    $respuesta = ModeloActividades::mdlMostrarActividades($tabla);
    
    return $respuesta;


}

}