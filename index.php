<?php

require_once "controladores/plantilla.controlador.php";
require_once "controladores/ruta.controlador.php";

require_once "controladores/banner.controlador.php";
require_once "modelos/banner.modelo.php";

require_once "controladores/precios.controlador.php";
require_once "modelos/precios.modelo.php";

require_once "controladores/tarifa.controlador.php";
require_once "modelos/tarifa.modelo.php";

require_once "controladores/actividades.controlador.php";
require_once "modelos/actividades.modelo.php";

require_once "controladores/categorias.controlador.php";
require_once "modelos/categorias.modelo.php";

require_once "controladores/habitaciones.controlador.php";
require_once "modelos/habitaciones.modelo.php";

require_once "controladores/reservas.controlador.php";
require_once "modelos/reservas.modelo.php";



$plantilla = new ControladorPlantilla();
$plantilla -> ctrPlantilla();