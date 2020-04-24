<?php

$actividades = ControladorActividades::ctrMostrarActividades();
/*echo '<pre class="bg-white">'; print_r($actividades); echo '</pre>'; */


?>


<!--=====================================
	ACTIVIDADES
======================================-->

<div class="fondoRestaurante container-fluid">


</div>

<div class="restaurante container-fluid pt-5" id="restaurante">
	
	<div class="container">

		<div class="grid-container">
		
			<div class="grid-item carta">

		
				
				<div class="row p-1 p-lg-5">

				<?php foreach ($actividades as $key => $value): ?>
					
					<div class="col-6 col-md-4 text-center p-1">
						
						

						<!--<div>Iconos diseñados por <a href="https://www.flaticon.es/autores/freepik" title="Freepik">Freepik</a> from <a href="https://www.flaticon.es/" title="Flaticon">www.flaticon.es</a></div>-->
						<img src="<?php echo $servidor.$value["img"]; ?>" class="img-fluid w-50 rounded-circle">

						<p class="py-2"><?php echo $value["descripcion"]; ?></p>

					</div>

					

					<div class="col-12 text-center d-block d-lg-none">
					
						<button class="btn btn-warning text-uppercase mb-5 volverCarta">Volver</button>

					</div>

				<?php endforeach ?>
					
				</div>
				

			</div>

			<div class="grid-item bloqueRestaurante">
				
				<h1 class="mt-4 my-lg-5">ACTIVIDADES</h1>

				<p class="p-4 my-lg-5">Descubre todas las actividades que puedes hacer en esta estupenda zona desde nuestro hotel, quedarás maravillado.</p>

				<button class="btn btn-warning text-uppercase mb-5 verCarta">Ver las actividades</button>

			</div>
			
		</div>		

	</div>

</div>
