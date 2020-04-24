<?php

Class conexion{

    static public function conectar(){

        $link = new PDO("mysql:host=localhost;dbname=hotel-oceano", "root", "");

        $link->exec("set names utf8");

        return $link;

    }

}