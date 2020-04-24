<?php

require_once "conexion.php";

Class ModeloActividades{

/*============================================
 ACTIVIDADES
============================================*/

static public function mdlMostrarActividades($tabla){

    $stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla");
    $stmt -> execute();
    return $stmt -> fetchAll();

    $stmt -> close();

    $stmt = null;

}

}