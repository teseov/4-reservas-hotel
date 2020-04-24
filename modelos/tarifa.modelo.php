<?php

require_once "conexion.php";

Class ModeloTarifa{

/*============================================
 mostrar el banner
============================================*/

static public function mdlMostrarTarifa($tabla){

    $stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla");
    $stmt -> execute();
    return $stmt -> fetchAll();

    $stmt -> close();

    $stmt = null;

}

}