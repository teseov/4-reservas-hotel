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

					<a href="<?php echo $ruta;?>index.php" class="float-left lead text-white pt-1 px-3">
						<h5><i class="fas fa-chevron-left"></i> Regresar</h5>
					</a>

					<h2 class="float-right text-white px-3 categoria">SUITE</h2>

					<div class="clearfix"></div>

					<ul class="nav nav-justified mt-lg-4">	

						<li class="nav-item">

							<a class="nav-link text-white active" href="#">
								<i class="fas fa-chevron-right"></i> Oriental
							</a>

						</li>

						<li class="nav-item">

							<a class="nav-link text-white" href="#">Contemporánea</a>

						</li>

						<li class="nav-item">

							<a class="nav-link text-white" href="#">Africana</a>

						</li>

						<li class="nav-item">

							<a class="nav-link text-white" href="#">Clásica</a>

						</li>

						<li class="nav-item">

							<a class="nav-link text-white" href="#">Retro</a>

						</li>

					</ul>

				</div>

				<!--=====================================
				MULTIMEDIA HABITACIONES
				======================================-->

				<!-- SLIDE  -->

				<section class="jd-slider mb-3 my-lg-3 slideHabitaciones">
		      	       
			        <div class="slide-inner">
			            
			            <ul class="slide-area">

				            <li>	

								<img src="img/oriental.png" class="img-fluid">

							</li>

							<li>	

								<img src="img/oriental.png" class="img-fluid">

							</li>

							<li>	

								<img src="img/oriental.png" class="img-fluid">

							</li>							

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

				<!-- VIDEO  -->

				<section class="mb-3 my-lg-3 videoHabitaciones d-none">
					
					<iframe width="100%" height="380" src="https://www.youtube.com/embed/JTu790_yyRc" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
				
				</section>

				<!-- 360 GRADOS -->

				<section class="mb-3 my-lg-3 360Habitaciones d-none">

					<div id="myPano" class="pano">

						<div class="controls">
							<a href="#" class="left">&laquo;</a>
							<a href="#" class="right">&raquo;</a>
						</div>

					</div>
									
				</section>

				<!--=====================================
				DESCRIPCIÓN HABITACIONES
				======================================-->	

				<div class="descripcionHabitacion px-3">
					
					<h1 class="colorTitulos float-left">ORIENTAL SUITE</h1>

					<div class="float-right pt-2">
						
						<button type="button" class="btn btn-default" vista="fotos"><i class="fas fa-camera"></i> Fotos</button>

						<button type="button" class="btn btn-default" vista="video"><i class="fab fa-youtube"></i> Video</button>
			
						<button type="button" class="btn btn-default" vista="360"><i class="fas fa-video"></i> 360°</button>
							
					</div>

					<div class="clearfix mb-4"></div>	

					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.
					</p>	

					<p >Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.
					</p>

					<br>

					<h3>PLAN CONTINENTAL</h3>

					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>
					Temporada Baja:$300 USD<br>
					Temporada Alta $350 USD</p>	

					<br>

					<h3>PLAN AMERICANO</h3>

					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>
					Temporada Baja:$380 USD<br>
					Temporada Alta $420 USD</p>
					
					<br>

					<p>Hora de entrada 16:00 | Hora de salida 12:00</p>

					<div class="container">

						<div class="row py-2" style="background:#509CC3">

							 <div class="col-6 col-md-3 input-group pr-1">
							
								<input type="text" class="form-control datepicker entrada" placeholder="Entrada">

								<div class="input-group-append">
									
									<span class="input-group-text"><i class="far fa-calendar-alt small text-gray-dark"></i></span>
								
								</div>

							</div>

						 	<div class="col-6 col-md-3 input-group pl-1">
							
								<input type="text" class="form-control datepicker salida" placeholder="Salida">

								<div class="input-group-append">
									
									<span class="input-group-text"><i class="far fa-calendar-alt small text-gray-dark"></i></span>
								
								</div>

							</div>

							<div class="col-12 col-md-6 mt-2 mt-lg-0 input-group">
								
								<a href="<?php echo $ruta; ?>index.php?pagina=reservas" class="w-100">
									<input type="button" class="btn btn-block btn-md text-white" value="Ver disponibilidad" style="background:black">	
								</a>

							</div>

						</div>

					</div>

				</div>

			</div>
			
			<!--=====================================
			BLOQUE DER
			======================================-->

			<div class="col-12 col-lg-4 colDerHabitaciones">

				<h2 class="colorTitulos">SUITE INCLUYE:</h2>
				
				<ul>
					<li>
						<h5>
							<i class="fas fa-bed w-25 colorTitulos"></i> 
							<span class="text-dark small">cama 2 x 2</span>
						</h5>
					</li>

					<li>
						<h5>
							<i class="fas fa-tv w-25 colorTitulos"></i> 
							<span class="text-dark small">TV de 42"</span>
						</h5>
					</li>

					<li>
						<h5>
							<i class="fas fa-tint w-25 colorTitulos"></i> 
							<span class="text-dark small">Agua caliente</span>
						</h5>
					</li>

					<li>
						<h5>
							<i class="fas fa-water w-25 colorTitulos"></i> 
							<span class="text-dark small">Jacuzzi</span>
						</h5>
					</li>

					<li>
						<h5>
							<i class="fas fa-toilet w-25 colorTitulos"></i> 
							<span class="text-dark small">Baño privado</span>
						</h5>
					</li>

					<li>
						<h5>
							<i class="fas fa-couch w-25 colorTitulos"></i>
							<span class="text-dark small"> Sofá</span>
						</h5>
					</li>

					<li>
						<h5>
							<i class="far fa-image w-25 colorTitulos"></i> 
							<span class="text-dark small">Balcón</span>
						</h5>
					</li>


					<li>
						<h5>
							<i class="fas fa-wifi w-25 colorTitulos"></i> 
							<span class="text-dark small">Servicio Wifi</span>
						</h5>
					</li>
				</ul>

				<!-- HABITACIONES -->

				<div class="habitaciones">

					<div class="container">

						<div class="row">

							<div class="col-12 pb-3 px-0 px-lg-3">

								<a href="<?php echo $ruta; ?>index.php?pagina=habitaciones">
									
									<figure class="text-center">
										
										<img src="img/habitacion02.png" class="img-fluid" width="100%">

										<p class="small py-4 mb-0">Lorem ipsum dolor sit amet, consectetur</p>

										<h3 class="py-2 text-gray-dark mb-0">DESDE $200 USD</h3>

										<h5 class="py-2 text-gray-dark border">Ver detalles <i class="fas fa-chevron-right ml-2" style=""></i></h5>

										<h1 class="text-white p-3 mx-auto w-50 lead" style="background:#197DB1">ESPECIAL</h1>

									</figure>

								</a>

							</div>

							<div class="col-12 pb-3 px-0 px-lg-3">

								<a href="<?php echo $ruta; ?>index.php?pagina=habitaciones">
									
									<figure class="text-center">
										
										<img src="img/habitacion03.png" class="img-fluid" width="100%">

										<p class="small py-4 mb-0">Lorem ipsum dolor sit amet, consectetur</p>

										<h3 class="py-2 text-gray-dark mb-0">DESDE $150 USD</h3>

										<h5 class="py-2 text-gray-dark border">Ver detalles <i class="fas fa-chevron-right ml-2"></i></h5>

										<h1 class="text-white p-3 mx-auto w-50 lead" style="background:#2F7D84">STANDAR</h1>

									</figure>

								</a>

							</div>

						</div>

					</div>

				</div>

			</div>


		</div>


	</div>

</div>