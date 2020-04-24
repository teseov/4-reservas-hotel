/*=============================================
FECHAS RESERVA
=============================================*/
$('.datepicker.entrada').datepicker({
	startDate: '0d',
  datesDisabled: '0d',
	format: 'yyyy-mm-dd',
	todayHighlight:true
});

$('.datepicker.entrada').change(function(){

  $('.datepicker.salida').attr("readonly", false);
	
  var fechaEntrada = $(this).val();

	$('.datepicker.salida').datepicker({
		startDate: fechaEntrada,
		datesDisabled: fechaEntrada,
		format: 'yyyy-mm-dd'
	});

})

/*=============================================
SELECTS ANIDADOS
=============================================*/

$(".selectTipoHabitacion").change(function(){

  var ruta = $(this).val();

  if(ruta != ""){

    $(".selectTemaHabitacion").html("");

  }else{

    $(".selectTemaHabitacion").html('<option>Elige tu habitación</option>')

  }

  var datos = new FormData();
  datos.append("ruta", ruta);

  $.ajax({

    url:urlPrincipal+"ajax/habitaciones.ajax.php",
    method: "POST",
    data: datos,
    cache: false,
    contentType: false,
    processData: false,
    dataType:"json",
    success:function(respuesta){

      $("input[name='ruta']").val(respuesta[0]["ruta"]);
      
      for(var i = 0; i < respuesta.length; i++){

        $(".selectTemaHabitacion").append('<option value="'+respuesta[i]["id_h"]+'">'+respuesta[i]["estilo"]+'</option>')

      }

         }

  })

})


/*=============================================
CALENDARIO
=============================================*/
if($(".infoReservas").html() != undefined){
  var idHabitacion = $(".infoReservas").attr("idHabitacion");
  /*console.log("idHabitacion", idHabitacion);*/
  var fechaIngreso = $(".infoReservas").attr("fechaIngreso");
  /* console.log("fechaIngreso", fechaIngreso);*/
  var fechaSalida = $(".infoReservas").attr("fechaSalida");
  /*console.log("fechaSalida", fechaSalida);*/

  var totalEventos = [];
  var opcion1 = [];
  var validarDisponibilidad = false;

  var datos = new FormData();
  datos.append("idHabitacion", idHabitacion);

  $.ajax({

    url:urlPrincipal+"ajax/reservas.ajax.php",
    method: "POST",
    data: datos,
    cache: false,
    contentType: false,
    processData: false,
    dataType:"json",
    success:function(respuesta){

      /*console.log("respuesta", respuesta);*/
      if(respuesta.length == 0){

        $('#calendar').fullCalendar({
          header: {
              left: 'prev',
              center: 'title',
              right: 'next'
          },
          events: [
            {
              start: fechaIngreso,
              end: fechaSalida,
              rendering: 'background',
              color: '#FFCC29'
            }
          ]

        });

      }else{   

        for(var i = 0; i < respuesta.length; i++){

          /* VALIDACIÓN DE CRUCE DE FECHAS DE LA OPCIÓN 1 */

          if(fechaIngreso == respuesta[i]["fecha_ingreso"]){

            opcion1[i] = false;            

          }else{

            opcion1[i] = true;

          }

          console.log("opcion1[i]", opcion1[i]);

           /* VALIDAR DISPONIBILIDAD */

          if(opcion1[i] == false){

            validarDisponibilidad = false;

          }else{

            validarDisponibilidad = true;

          }
          console.log("validarDisponibilidad", validarDisponibilidad);

          if(!validarDisponibilidad){

            totalEventos.push(
             
              {
                "start": respuesta[i]["fecha_ingreso"],
                "end": respuesta[i]["fecha_salida"],
                "rendering": 'background',
                "color": '#847059'
               }
            )

            $(".infoDisponibilidad").html('<h5 class="pb-5 float-left">¡Lo sentimos, no hay disponibilidad para esa fecha!<br><br><strong>¡Vuelve a intentarlo!</strong></h5>');

            break;

          }else{

            totalEventos.push(
             
              {
                "start": respuesta[i]["fecha_ingreso"],
                "end": respuesta[i]["fecha_salida"],
                "rendering": 'background',
                "color": '#847059'
               }
            )
               $(".infoDisponibilidad").html('<h1 class="pb-5 float-left">¡Está disponible!</h1>');
          }

        } 
        //fin ciclo for

        if(validarDisponibilidad){
          totalEventos.push(
          {
            "start": fechaIngreso,
            "end": fechaSalida,
            "rendering": 'background',
            "color": '#FFCC29'
          }
          )
        
        }

        

        $('#calendar').fullCalendar({
          header: {
              left: 'prev',
              center: 'title',
              right: 'next'
          },
          events:totalEventos 

        });

      }

    }

  })

}