

<!DOCTYPE html>
<html lang="en" class="fondo">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>EL PERRO VOLADOR</title>
 
 	<link rel="stylesheet" type="text/css" href="css/estilos2.css">
    <!-- CSS de Bootstrap -->
    <link rel="stylesheet" type="text/css" href="bootstrap.css">
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <!-- Librería jQuery requerida por los plugins de JavaScript -->
    <script src="http://code.jquery.com/jquery.js"></script>


<!--Esto es para que funcione el input/date-time en firefox-->
	<!-- cdn for modernizr, if you haven't included it already -->
  <script src="http://cdn.jsdelivr.net/webshim/1.12.4/extras/modernizr-custom.js"></script>
	<!-- polyfiller file to detect and load polyfills -->
	<script src="http://cdn.jsdelivr.net/webshim/1.12.4/polyfiller.js"></script>
	<script>
  		webshims.setOptions('waitReady', false);
  		webshims.setOptions('forms-ext', {types: 'date'});
  		webshims.polyfill('forms forms-ext');
	</script>


    <section class="menuBar">
    	<ul class="nav nav-pills nav-justified">
    		<li role="presentation" class="active"><a href="#">Home</a></li>
    		<li role="presentation"><a href="#">Check-in</a></li>
    		<li role="presentation"><a href="#">No se que poner aqui</a></li>
    	</ul>
    </section>
  </head>
  <body>
  <section class="centro">
  <section class="carrusel">
  	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		  <!-- Wrapper for slides -->
		  <div class="carousel-inner" role="listbox">
		    <div class="item active">
		      <img src="images/dest1.jpg">
          <div class="carousel-caption">
          <h3>Aqui podemos poner algo</h3>
          </div>
		    </div>

		    <div class="item">
		      <img src="images/dest2.jpg">
          <div class="carousel-caption">
          <h3>aqui tambien</h3>
          </div>
		    </div>

		    <div class="item">
		      <img src="images/dest3.jpg">
          <div class="carousel-caption">
          <h3>aqui tambien</h3>
          </div>
		    </div>

        <div class="item">
          <img src="images/dest4.jpg">
          <div class="carousel-caption">
          <h3>aqui tambien</h3>
          </div>
        </div>

        <div class="item">
          <img src="images/dest5.jpg">
          <div class="carousel-caption">
          <h3>y aqui!</h3>
          </div>
        </div>

		  <!-- Left and right controls -->
		  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
		    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		    <span class="sr-only">Next</span>
		  </a>
	</div>
  </section>
  <section class="formulario">
<!--<div class="alert alert-warning alertas" role="alert">AIIIIUUUDAAAA!!!</div>-->
                                  <form method="post" action="pages/buscaVuelo.php">
                                  <section class="grupoDato">
                                    <section class="datos">
                                       <label class="ladoL">de donde vienes</label>
                                        <select class="ladoR" name="origen">
                                          <option>aguascalientes</option>
                                          <option>sinaloa</option>
                                          <option>oaxaca</option>
                                        </select>  
                                    </section>
                                    <section class="datos">
                                      <label class="ladoL">fecha salida</label>
                                      <input type="date" name="fecha-salida" class="ladoR"> 
                                    </section>
                                  </section>
                                  <section class="grupoDato">
                                    <section class="datos">
                                       <label class="ladoL">a donde vas</label>
                                        <select class="ladoR" name="destino">
                                          <option>aguascalientes</option>
                                          <option>guadalajara</option>
                                          <option>yucatan</option>
                                        </select>  
                                    </section>
                                    <section class="datos">
                                      <label class="ladoL">fecha regreso</label>
                                      <input type="date" name="fecha-regreso" class="ladoR"> 
                                    </section>
                                  </section>
                                  <section class="radios">
                                    <label class="radio-inline"><input type="radio" name="tipo-vuelo" id="sencilo" selected>Sencillo</label>
                                    <label class="radio-inline"><input type="radio" name="tipo-vuelo" id="redondo">Redondo</label>    
                                  </section>
                                  <section class="buscar">
                                    <button type="submit" class="btn btn-success">BUSCAR</button>
                                  </section>
                                  </form>
  	
  </section>
  </section>
  </body>
  <footer>
  	<section>
  		<span>universidad autonoma de aguascalientes UAA | isc | 5°c</span>
  		<span>oscar antonio hernández mojica</span>
  		<span>Luis daniel reyna pérez</span>
  	</section>
  </footer>
  <script src="js/bootstrap.min.js"></script>
</html>

