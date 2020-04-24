<?php

Class ControladorBanner{

/*==================================
muestra banner
================================*/

static public function ctrMostrarBanner(){

    $tabla = "banner";

    $respuesta = ModeloBanner::mdlMostrarBanner($tabla);
    
    return $respuesta;


}

}