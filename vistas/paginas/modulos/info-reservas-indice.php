<?php	

if(isset($_POST["id-habitacion"])){

		echo '<pre class="bg-white">'; print_r($_POST["id-habitacion"]); echo '</pre>';
	/*echo '<pre class="bg-white">'; print_r($_POST["fecha-ingreso"]); echo '</pre>';
	echo '<pre class="bg-white">'; print_r($_POST["fecha-salida"]); echo '</pre>';*/

	$valor = $_POST["id-habitacion"];

	$reservas = ControladorReservas::ctrMostrarReservas($valor);
	
	$indice = 0;

	if(!$reservas){

		$valor = $_POST["ruta"];

		$reservas = ControladorHabitaciones::ctrMostrarHabitaciones($valor);
		echo '<pre class="bg-white">'; print_r($reservas); echo '</pre>';
		foreach ($reservas as $key => $value) {
			
			if($value["id_h"] == $_POST["id-habitacion"]){

				$indice = $key;

			}
		}
	}

	$precios = ControladorPrecios::ctrMostrarPrecios();
	/*=============================================
	DEFINIR PRECIOS DE TEMPORADA
	=============================================*/

	date_default_timezone_set("Europe/Madrid");

	$hoy = getdate();
	
	if($hoy["mon"] == 12 && $hoy["mday"] >= 15 && $hoy["mday"] <= 31 ||
	   $hoy["mon"] == 1 && $hoy["mday"] >= 1 && $hoy["mday"] <= 15 ||
	   $hoy["mon"] == 3 && $hoy["mday"] >= 1 && $hoy["mday"] <= 31 ||
	   $hoy["mon"] == 4 && $hoy["mday"] >= 1 && $hoy["mday"] <= 30 ||
	   $hoy["mon"] == 5 && $hoy["mday"] >= 1 && $hoy["mday"] <= 31 ||
	   $hoy["mon"] == 10 && $hoy["mday"] >= 1 && $hoy["mday"] <= 31 ||
	   $hoy["mon"] == 11 && $hoy["mday"] >= 1 && $hoy["mday"] <= 15){

		
		$precioEconomico = $precios[0]["t_alta"];
		$precioStandar = $reservas[$indice]["temporada_alta"] + $precios[1]["t_alta"];
		$precioMedia = $reservas[$indice]["temporada_alta"] + $precios[2]["t_alta"];
		$precioTotal = $reservas[$indice]["temporada_alta"] + $precios[3]["t_alta"];
		

	}else{

		$precioEconomico = $precios[0]["t_baja"];
		$precioStandar = $reservas[$indice]["temporada_baja"] + $precios[1]["t_baja"];
		$precioMedia = $reservas[$indice]["temporada_baja"] + $precios[2]["t_baja"];
		$precioTotal = $reservas[$indice]["temporada_baja "] + $precios[3]["t_baja"];

	}

	/*=============================================
	DEFINIR CANTIDAD DE DIAS DE LA RESERVA
	=============================================*/

	$fechaIngreso = new DateTime($_POST["fecha-ingreso"]);
	$fechaSalida = new DateTime($_POST["fecha-salida"]);
	$diff = $fechaIngreso->diff($fechaSalida);
	$dias = $diff->days;

	if($dias == 0){

		$dias = 1;
	}

}else{
	echo '<script> window.location="'.$ruta.'</script>';
}


?>

<!--=====================================
INFO RESERVAS
======================================-->

<div class="infoReservas container-fluid bg-white p-0 pb-5" idHabitacion="<?php echo $_POST["id-habitacion"]; ?>" fechaIngreso="<?php echo $_POST["fecha-ingreso"]; ?>" fechaSalida="<?php echo $_POST["fecha-salida"]; ?>" dias="<?php echo $dias; ?>">
	
	<div class="container">
		
		<div class="row">

			<!--=====================================
			BLOQUE IZQ
			======================================-->
			
			<div class="col-12 col-lg-8 colIzqReservas p-0">
				
				<!--=====================================
				CABECERA RESERVAS
				======================================-->
				
				<div class="pt-4 cabeceraReservas">
					
					<a href="<?php echo $ruta;  ?>habitaciones" class="float-left lead text-white pt-1 px-3">
						<h5><i class="fas fa-chevron-left"></i> Regresar</h5>
					</a>

					<div class="clearfix"></div>

					<h1 class="float-left text-white p-2 pb-lg-5">RESERVAS</h1>	

					<h6 class="float-right px-3">

						<br>
						<a href="<?php echo $ruta;  ?>perfil" style="color:#FFCC29">Ver tus reservas</a>

					</h6>

					<div class="clearfix"></div>

				</div>

				<!--=====================================
				CALENDARIO RESERVAS
				======================================	-->

				<div class="bg-white p-4 calendarioReservas">
				<?php	if (!$reservas):	?>

					<h1 class="pb-5 float-left">¡Está Disponible!</h1>
				<?php else:	?>

					<div class="infoDisponibilidad"></div>

				<?php endif	?>

					<div class="float-right pb-3">
							
						<ul>
							<li>
								<i class="fas fa-square-full" style="color:#847059"></i> No disponible
							</li>

							<li>
								<i class="fas fa-square-full" style="color:#eee"></i> Disponible
							</li>

							<li>
								<i class="fas fa-square-full" style="color:#FFCC29"></i> Tu reserva
							</li>
						</ul>

					</div>

					<div class="clearfix"></div>
			
					<div id="calendar"></div>

					<!--=====================================
					MODIFICAR FECHAS
					======================================	-->

					<h6 class="lead pt-4 pb-2">Puede modificar la fecha de acuerdo a los días disponibles:</h6>

				<form action=" <?php echo $ruta; ?>reservas" method="post">

						<input type="hidden" name="id-habitacion" value="<?php echo $_POST["id-habitacion"]; ?>" >

					<div class="container mb-3">

						<div class="row py-2" style="background:#509CC3">

							 <div class="col-6 col-md-3 input-group pr-1">
							
							 <input type="text" class="form-control datepicker entrada" autocomplete="off" placeholder="Entrada" name="fecha-ingreso" value="<?php echo $_POST["fecha-ingreso"]; ?>" required>


								<div class="input-group-append">
									
									<span class="input-group-text"><i class="far fa-calendar-alt small text-gray-dark"></i></span>
								
								</div>

							</div>

						 	<div class="col-6 col-md-3 input-group pl-1">
							
							 <input type="text" class="form-control datepicker salida" autocomplete="off"placeholder="Salida" name="fecha-salida" value="<?php echo $_POST["fecha-salida"]; ?>" required>

								<div class="input-group-append">
									
									<span class="input-group-text"><i class="far fa-calendar-alt small text-gray-dark"></i></span>
								
								</div>

							</div>

							<div class="col-12 col-md-6 mt-2 mt-lg-0 input-group">
								
								
									<input type="submit" class="btn btn-block btn-md text-white" value="Ver disponibilidad" style="background:black">	
								

							</div>

						</div>

					</div>

				</form>
				</div>

			</div>

			<!--=====================================
			BLOQUE DER
			======================================-->

			<div class="col-12 col-lg-4 colDerReservas" style="display:none">

				<h4 class="mt-lg-5">Código de la Reserva:</h4>
				<h2 class="colorTitulos"><strong class="codigoReserva"></strong></h2>

				<div class="form-group">
				  <label>Ingreso 16:00 Horas:</label>
				  <input type="date" class="form-control" value="<?php echo $_POST["fecha-ingreso"];?>" readonly>
				</div>

				<div class="form-group">
				  <label>Salida 12:00 Horas:</label>
				  <input type="date" class="form-control" value="<?php echo $_POST["fecha-salida"];?>"  readonly>
				</div>

				<div class="form-group">
				  <label>Habitación:</label>
				  <input type="text" class="form-control" value="Habitación <?php echo $reservas[$indice]["tipo"]." ".$reservas[$indice]["estilo"]; ?>" readonly>

				  <?php

				  	$galeria = json_decode($reservas[$indice]["galeria"], true);
				  
				  ?>

				  <img src="<?php echo $servidor.$galeria[$indice]; ?>" class="img-fluid">

				</div>

				<div class="form-group">
				  <label><a href="#infoPlanes" data-toggle="modal">Escoge tu Plan:</a> <small>(Precio especiales para reservas web)</small></label>
				  <select class="form-control elegirPlan">
				  	
					<option value="<?php echo $precioEconomico;?>,economico">Economico <?php echo number_format($precioEconomico); ?> € 1 noche</option>
					<option value="<?php echo $precioStandar;?>,standar">Standar <?php echo number_format($precioStandar); ?> € 1 noche</option>
					<option value="<?php echo $precioMedia;?>,media">Media Pensión <?php echo number_format($precioMedia); ?> € 1 noche</option>
					<option value="<?php echo $precioTotal;?>,total">Pensión Completa <?php echo number_format($precioTotal); ?> € 1 noche</option>
					

				  </select>
				</div>
				
				<div class="form-group">
				  <label>Personas:</label>
				  <select class="form-control cantidadPersonas">
				  	
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>

				  </select>
				</div>

				<div class="row py-4">

				<div class="col-12 col-lg-6 col-xl-7 text-center text-lg-left">
						
				<h1 class="precioReserva"><span><?php echo number_format($precioEconomico*$dias);?></span> €</h1>

					</div>
					
					<div class="col-12 col-lg-6 col-xl-5">
				
						<a href="<?php echo $ruta;  ?>perfil"
						class="pagarReserva" 
								idHabitacion="<?php echo $reservas[$indice]["id_h"]; ?>"
								imgHabitacion="<?php echo $servidor.$galeria[0]; ?>"
								infoHabitacion="Habitación <?php echo $reservas[$indice]["tipo"]." ".$reservas[$indice]["estilo"]; ?>"
								pagoReserva="<?php echo ($precioEconomico*$dias);?>"
								codigoReserva=""
								fechaIngreso="<?php echo $_POST["fecha-ingreso"];?>"
								fechaSalida="<?php echo $_POST["fecha-salida"];?>"
								plan="economico" 
								personas="2"
								>
							<button class="btn btn-dark btn-lg w-100">RESERVAR</button>
						</a>

					</div>
			
				</div>

			</div>

		</div>

	</div>

</div>

<!--=====================================
VENTANA MODAL PLANES
======================================-->

<div class="modal" id="infoPlanes">
	
	 <div class="modal-dialog modal-lg">
			
		<div class="modal-content">

			<div class="modal-header">
	        	<h4 class="modal-title text-uppercase">Habitación <?php echo $reservas[$indice]["tipo"].' '.$reservas[$indice]["estilo"]; ?></h4>
	        	<button type="button" class="close" data-dismiss="modal">&times;</button>
	      	</div>

	      	<div class="modal-body">

				<figure class="text-center">

       				<img src="<?php echo $servidor.$galeria[$indice]; ?>" class="img-fluid">

       			</figure>

				<p class="px-2"><?php echo $reservas[$indice]["descripcion_h"]; ?></p>

				<hr>

       			<div class="row">

       			<?php foreach ($precios as $key => $value): ?>

					<div class="col-12 col-md-6">
						
						<h2 class="text-uppercase p-2">Plan <?php echo $value["tipo"]; ?></h2>

						<figure class="center">
	       					<img src="<?php echo $servidor.$value["img"]; ?>" class="img-fluid">
	       				</figure>

	       				<p class="p-2"><?php echo $value["descripcion"]; ?></p>

	       				<h4 class="px-2">Precio</h4>

       					<p class="px-2">

	       				Temporada Baja, precio desde: <?php echo number_format($value["t_baja"]); ?> €<br>

	       				Temporada Alta, precio desde: <?php echo number_format($value["t_alta"]); ?> €

	       				</p>


					</div>
       				
       			<?php endforeach ?>
       			
       			</div>

	      	</div>

	      	<div class="modal-footer">
        		<button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
      		</div>

		</div>

	</div>

</div>
