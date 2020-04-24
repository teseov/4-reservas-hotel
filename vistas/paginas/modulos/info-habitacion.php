<?php

$valor = $_GET["pagina"];

$habitaciones = ControladorHabitaciones::ctrMostrasHabitaciones($valor);
/*echo '<pre class="bg-white">'; print_r($habitaciones); echo '</pre>';*/

?>



<!--=====================================
INFO HABITACIÓN
======================================-->

<div class="infoHabitacion container-fluid bg-white p-0 pb-5">
	
	<div class="container">
		
		<div class="row">

			<!--=====================================
			BLOQUE IZQ
			======================================-->
			
			<div class="col-12 col-lg-8 colIzqHabitaciones p-0">
				
				<!--=====================================
				CABECERA HABITACIONES
				======================================-->
				
				<div class="pt-4 cabeceraHabitacion">

					<a href="<?php echo $ruta; ?>" class="float-left lead text-white pt-1 px-3">
						<h5><i class="fas fa-chevron-left"></i> VOLVER</h5>
					</a>

					<h2 class="float-right text-white px-3 categoria text-uppercase"><?php echo $habitaciones[0]["tipo"];  ?></h2>

					<div class="clearfix"></div>

					<ul class="nav nav-justified mt-lg-4">	

					<?php foreach ($habitaciones as $key => $value): ?>

						<li class="nav-item">

							<a class="nav-link text-white" orden="<?php echo $key;?>" ruta ="<?php echo $_GET["pagina"]; ?>" href="#">
								 <?php echo $value["estilo"]; ?>
							</a>

						</li>

					<?php	endforeach ?>

						
					</ul>

				</div>

				<!--=====================================
				MULTIMEDIA HABITACIONES
				======================================-->

				<!-- SLIDE  -->

				<section class="jd-slider mb-3 my-lg-3 slideHabitaciones">
		      	       
			        <div class="slide-inner">
			            
			            <ul class="slide-area">
						<?php

						$galeria = json_decode($habitaciones[0]["galeria"], true);
						/*echo '<pre class="bg-white">'; print_r($galeria); echo '</pre>';*/
						?>

						<?php foreach ($galeria as $key => $value): ?>

				            <li>	

								<img src="<?php echo $servidor.$value; ?>" class="img-fluid">

							</li>

						<?php endforeach ?>

														

						</ul>

					</div>

				  	  	<a class="prev d-none d-lg-block" href="#">
				            <i class="fas fa-angle-left fa-2x"></i>
				        </a>

				        <a class="next d-none d-lg-block" href="#">
				            <i class="fas fa-angle-right fa-2x"></i>
				        </a>

				         <div class="controller d-block d-lg-none">

					        <div class="indicate-area"></div>

					    </div>
									   
				</section>

				

				<!--=====================================
				DESCRIPCIÓN HABITACIONES
				======================================-->	

<div class="descripcionHabitacion px-3">
					
					<h1 class="colorTitulos float-left"><?php echo $habitaciones[0]["tipo"]." ".$habitaciones[0]["estilo"]; ?></h1>

					

					<div class="clearfix mb-4"></div>	

					<div class="d-habitacion">
					
					<?php  echo $habitaciones[0]["descripcion_h"]; ?>
					
					</div>

	<form action=" <?php echo $ruta; ?>reservas" method="post">

		<input type="hidden" name="id-habitacion" value="<?php echo $habitaciones[0]["id_h"]; ?>" >

		<input type="hidden" name="ruta" value="<?php echo $habitaciones[0]["ruta"]; ?>">
							
					<div class="container">

						<div class="row py-2" style="background:#509CC3">

						 <div class="col-6 col-md-3 input-group pr-1">
	
						<input type="text" class="form-control datepicker entrada" placeholder="Entrada" name="fecha-ingreso" required>

						<div class="input-group-append">
			
						<span class="input-group-text"><i class="far fa-calendar-alt small text-gray-dark"></i></span>
		
						</div>

				</div>

	 				<div class="col-6 col-md-3 input-group pl-1">
	
					<input type="text" class="form-control datepicker salida" placeholder="Salida" name="fecha-salida" required>

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

			<div class="col-12 col-lg-4 colDerHabitaciones">

				<h2 class="colorTitulos text-uppercase"><?php echo $habitaciones[0]["tipo"];  ?> INCLUYE:</h2>
				
				<ul>

				<?php

				$incluye = json_decode($habitaciones[0]["incluye"], true);
				/*echo '<pre>'; print_r($incluye); echo '</pre>';*/

				?>

				<?php foreach ($incluye as $key => $value): ?>

					<li>
						<h5>
							<i class="<?php echo $value["icono"];  ?> w-25 colorTitulos"></i> 
							<span class="text-dark small"><?php echo $value["item"];  ?></span>
						</h5>
					</li>


				<?php endforeach ?>
					

					
				</ul>

				<!-- HABITACIONES -->

				<div class="habitaciones" id="habitaciones">

					<div class="container">

						<div class="row">

						<?php

							$categorias = ControladorCategorias::ctrMostrarCategorias();

						?>

						<?php foreach ($categorias as $key => $value): ?>

							<?php if ($_GET["pagina"] != $value["ruta"]): ?>

							<div class="col-12 pb-3 px-0 px-lg-3">

									<a href="<?php echo $ruta.$value["ruta"];  ?>">
					
									<figure class="text-center">
										
										<img src="<?php echo $servidor.$value["img"]; ?>" class="img-fluid" width="100%">

										<p class="small py-4 mb-0"><?php echo $value["descripcion"]; ?></p>

										<h3 class="py-2 text-gray-dark mb-0">DESDE <?php echo number_format($value["temporada_baja"]); ?> €</h3>

										<h5 class="py-2 text-gray-dark border">Ver detalles <i class="fas fa-chevron-right ml-2"></i></h5>
										
										<h1 class="text-white p-3 mx-auto w-50 lead text-uppercase" style="background:<?php echo $value["color"]; ?>"><?php echo $value["tipo"]; ?></h1>

									</figure>

								</a>

							</div>

							<?php endif ?>		
							
						<?php endforeach ?>	

						</div>

					</div>

				</div>

			</div>


		</div>


	</div>

</div>