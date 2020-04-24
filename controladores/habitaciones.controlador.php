<?php


Class ControladorHabitaciones {

/*============================================
 CATEGORIAS-HABITACIONES INNER JOIN
============================================*/

static public function ctrMostrasHabitaciones($valor){

    $tabla1 = "categorias";
    $tabla2 = "habitaciones";

    $respuesta = ModeloHabitaciones::mdlMostrarHabitaciones($tabla1, $tabla2, $valor);

		return $respuesta;
    
}

}