<?php

Class ControladorCategorias{

/*==================================
CATEGORIAS
================================*/

static public function ctrMostrarCategorias(){

    $tabla = "categorias";

    $respuesta = ModeloCategorias::mdlMostrarCategorias($tabla);
    
    return $respuesta;


}

}