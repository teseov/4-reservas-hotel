<?php

require_once "conexion.php";

Class ModeloCategorias{

/*============================================
    CATEGORIAS
============================================*/

static public function mdlMostrarCategorias($tabla){

    $stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla");
    $stmt -> execute();
    return $stmt -> fetchAll();

    $stmt -> close();

    $stmt = null;

}

}