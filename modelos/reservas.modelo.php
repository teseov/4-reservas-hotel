<?php

require_once "conexion.php";

Class ModeloReservas{

	/*=============================================
	mostrar habitaciones reservas categoria
	=============================================*/
	
	static public function mdlMostrarReservas($tabla1, $tabla2, $tabla3, $valor){

        $stmt = Conexion::conectar()->prepare("SELECT $tabla1.*, $tabla2.*, $tabla3.* FROM $tabla1 INNER JOIN $tabla2 ON $tabla1.id_h = $tabla2.id_habitacion INNER JOIN $tabla3 ON $tabla1.id_h = $tabla3.id WHERE id_h = :id_h");
        
        $stmt -> bindParam(":id_h", $valor, PDO::PARAM_STR);

		$stmt -> execute();

		return $stmt -> fetchAll();

		$stmt -> close();

		$stmt = null;

	}

	/*=============================================
	Mostrar Codigo Reserva Singular
	=============================================*/

	static public function mdlMostrarCodigoReserva($tabla, $valor){

		$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE codigo_reserva = :codigo_reserva");

		$stmt -> bindParam(":codigo_reserva", $valor, PDO::PARAM_STR);

		$stmt -> execute();

		return $stmt -> fetch();

		$stmt -> close();

		$stmt = null;
	
	}

}