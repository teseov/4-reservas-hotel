<!--=====================================
REDES SOCIALES MÓVIL
======================================-->

<ul class="redesMovil p-2 nav nav-justified">

	<li class="nav-item">
		<a href="#" target="_blank"><i class="fab fa-facebook-f lead text-white"></i></a>
	</li>

	<li class="nav-item">
		<a href="#" target="_blank"><i class="fab fa-twitter lead text-white"></i></a>
	</li>

	<li class="nav-item">
		<a href="#" target="_blank"><i class="fab fa-youtube lead text-white"></i></a>
	</li>

	<li class="nav-item">
		<a href="#" target="_blank"><i class="fab fa-instagram lead text-white"></i></a>
	</li>	

</ul>	



<!--=====================================
VENTANA MODAL INGRESO
======================================-->

<div class="modal" id="modalIngreso">

  <div class="modal-dialog">

    <div class="modal-content">

      <div class="modal-header bg-info text-white">
        <h4 class="modal-title">Ingresar</h4>
        <button type="button" class="close text-white" data-dismiss="modal">&times;</button>
      </div>

      <div class="modal-body">

      	<!--=====================================
		INGRESO CON REDES SOCIALES
		======================================-->
       
      	<div class="d-flex">
      		
			<div class="px-2 flex-fill">

				<p class="p-2 bg-primary text-center text-white">
					<i class="fab fa-facebook"></i>
					Ingreso con Facebook
				</p>

			</div>

			<div class="px-2 flex-fill">

				<p class="p-2 bg-danger text-center text-white">
					<i class="fab fa-google"></i>
					Ingreso con Google
				</p>

			</div>

      	</div>

      	<!--=====================================
		INGRESO DIRECTO
		======================================-->

		<hr class="mt-0">

		<form>

			<div class="input-group mb-3">

			    <div class="input-group-prepend">

			      <span class="input-group-text">
			      	
			      	<i class="far fa-envelope"></i>

			      </span>

			    </div>

			    <input type="email" class="form-control" placeholder="Email">

		  	</div>

		  	<div class="input-group mb-3">

			    <div class="input-group-prepend">

			      <span class="input-group-text">
			      	
					<i class="fas fa-unlock-alt"></i>

			      </span>

			    </div>

			    <input type="password" class="form-control" placeholder="Contraseña">

		  	</div>
			

			<input type="submit" class="btn btn-dark btn-block" value="Ingresar">

		</form>

      </div>


      <div class="modal-footer">
        
		¿No tiene una cuenta registrada? | 

		<strong>

			<a href="#modalRegistro" data-toggle="modal" data-dismiss="modal">
				Registrarse
			</a>

		</strong>

      </div>

    </div>

  </div>

</div>

<!--=====================================
VENTANA MODAL REGISTRO
======================================-->

<div class="modal" id="modalRegistro">

  <div class="modal-dialog">

    <div class="modal-content">

      <div class="modal-header bg-info text-white">
        <h4 class="modal-title">Registarse</h4>
        <button type="button" class="close text-white" data-dismiss="modal">&times;</button>
      </div>

      <div class="modal-body">

      	<!--=====================================
		INGRESO CON REDES SOCIALES
		======================================-->
       
      	<div class="d-flex">
      		
			<div class="px-2 flex-fill">

				<p class="p-2 bg-primary text-center text-white">
					<i class="fab fa-facebook"></i>
					Ingreso con Facebook
				</p>

			</div>

			<div class="px-2 flex-fill">

				<p class="p-2 bg-danger text-center text-white">
					<i class="fab fa-google"></i>
					Ingreso con Google
				</p>

			</div>

      	</div>

      	<!--=====================================
		REGISTRO DIRECTO
		======================================-->

		<hr class="mt-0">

		<form>

			<div class="input-group mb-3">

			    <div class="input-group-prepend">

			      <span class="input-group-text">
			      	
			      	<i class="far fa-user"></i>

			      </span>

			    </div>

			    <input type="text" class="form-control" placeholder="Nombre">

		  	</div>


			<div class="input-group mb-3">

			    <div class="input-group-prepend">

			      <span class="input-group-text">
			      	
			      	<i class="far fa-envelope"></i>

			      </span>

			    </div>

			    <input type="email" class="form-control" placeholder="Email">

		  	</div>

		  	<div class="input-group mb-3">

			    <div class="input-group-prepend">

			      <span class="input-group-text">
			      	
					<i class="fas fa-unlock-alt"></i>

			      </span>

			    </div>

			    <input type="password" class="form-control" placeholder="Contraseña">

		  	</div>
			

			<input type="submit" class="btn btn-dark btn-block" value="Registrarse">

		</form>

      </div>


      <div class="modal-footer">
        
		¿Ya tienes una cuenta registrada? | 

		<strong>

			<a href="#modalIngreso" data-toggle="modal" data-dismiss="modal">
				Ingresar
			</a>

		</strong>

      </div>

    </div>

  </div>

</div>