<?php

$ruta = ControladorRuta::ctrRuta();
$servidor = ControladorRuta::ctrServidor();



?>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">

	<meta name="viewport" content="width=device-width, initial-scale=1">	

	<title>2 MVC</title>

	<base href="vistas/">


	<link rel="icon" href="img/icono.jpg">

	<!--=====================================
	VÍNCULOS CSS
	======================================-->

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

	<!-- Font Awesome -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

	<!-- Fuente Open Sans y Ubuntu -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300|Ubuntu" rel="stylesheet">

	<!-- bootstrap datepicker -->
	<link rel="stylesheet" href="css/plugins/bootstrap-datepicker.standalone.min.css">

	<!-- jdSlider -->
	<link rel="stylesheet" href="css/plugins/jquery.jdSlider.css">

	<!-- Pano -->
	<link rel="stylesheet" href="css/plugins/jquery.pano.css">

	 <!-- fullCalendar -->
	<link rel="stylesheet" href="css/plugins/fullcalendar.min.css">

	<!-- Hoja de estilo personalizada -->
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/habitaciones.css">

	<!--=====================================
	VÍNCULOS JAVASCRIPT
	======================================-->

	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

	<!-- bootstrap datepicker -->
	<!-- https://bootstrap-datepicker.readthedocs.io/en/latest/ -->
	<script src="js/plugins/bootstrap-datepicker.min.js"></script>

	<!-- https://easings.net/es# -->
	<script src="js/plugins/jquery.easing.js"></script>

	<!-- https://markgoodyear.com/labs/scrollup/ -->
	<script src="js/plugins/scrollUP.js"></script>

	<!-- jdSlider -->
	<!-- https://www.jqueryscript.net/slider/Carousel-Slideshow-jdSlider.html -->
	<script src="js/plugins/jquery.jdSlider-latest.js"></script>

	<!-- fullCalendar -->
	<!-- https://momentjs.com/ -->
	<script src="js/plugins/moment.js"></script>
	<!-- https://fullcalendar.io/docs/background-events-demo -->	
	<script src="js/plugins/fullcalendar.min.js"></script>

	<!-- JQUERY NUMBER -->	
	<!-- https://plugins.jquery.com/df-number-format/ -->
	<script src="js/plugins/jquerynumber.js"></script>
</head>

<body>
    <?php
include "paginas/modulos/header.php";



if (isset($_GET["pagina"])){

	$rutasCategorias = ControladorCategorias::ctrMostrarCategorias();
	$validarRuta = "";

	foreach ($rutasCategorias as $key => $value) {
		
		if($_GET["pagina"] == $value["ruta"]){

			$validarRuta = "habitaciones";
		}
	}

	


	if($_GET["pagina"] == "reservas" || $_GET["pagina"] == "perfil"){
		
		include "paginas/".$_GET["pagina"].".php";

	}else if($validarRuta != ""){

	include "paginas/habitaciones.php";

	}else{
		
		echo '<script>

		window.location = "'.$ruta.'";

		</script>';
	}

	
} else {

	include "paginas/inicio.php";

}




include "paginas/modulos/footer.php";

include "paginas/modulos/modal.php";

?>

<input type="hidden" value="<?php echo $ruta; ?>" id="urlPrincipal">
<input type="hidden" value="<?php echo $servidor; ?>" id="urlServidor">

<!--<script src="js/script.js"></script>-->

<script src="js/plantilla.js"></script>
<script src="js/menu.js"></script>

<script src="js/habitaciones.js"></script>
<script src="js/reservas.js"></script>

</body>

</html>