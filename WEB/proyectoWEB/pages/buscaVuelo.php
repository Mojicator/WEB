<!DOCTYPE html>
<html>
<?php 
	$host="localhost";
	$user="root";
	$contraseña="315721";
	$dataBase="Proyecto";

	$origen=$_POST["origen"];
	$destino=$_POST["destino"];
	$fechaSalida=$_POST["fecha-salida"];
	$fechaRegreso=$_POST["fecha-regreso"];
	//para despues, obtener si es sencillo es redondo 
	$tipo=$_POST["tipo-vuelo"];

	$laConexion=mysqli_connect($host,$user,$contraseña,$dataBase);
	if($laConexion){
		/*echo "esta cosa funciona! <br>";
		echo "$origen <br>";
		echo "$destino <br>";
		echo "$fechaSalida <br>";
		echo "$fechaRegreso <br>";*/
	}
	$laConexion->close();
?>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>EL PERRO VOLADOR</title>
 
 	<link rel="stylesheet" type="text/css" href="../css/estilos2.css">
    <!-- CSS de Bootstrap -->
    <link rel="stylesheet" type="text/css" href="bootstrap.css">
    <link href="../css/bootstrap.min.css" rel="stylesheet" media="screen">
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
    		<li role="presentation" class="active"><a href="../index.php">Home</a></li>
    		<li role="presentation"><a href="#">Check-in</a></li>
    		<li role="presentation"><a href="#">No se que poner aqui</a></li>
    	</ul>
    </section>
  </head>
<body>
<!--<?php 
	
?>-->
<section class="fechasS">
	<ul class="nav nav-pills">
		<?php
			 $laConexion=mysqli_connect($host,$user,$contraseña,$dataBase);
			 $consulta="select * from Vuelos";
			 $resultado=mysqli_query($laConexion,$consulta);
		 	 if($laConexion){
				 while($row=mysqli_fetch_assoc($resultado)){
				   	$fecha1=$row["llego"];
					echo "<li role='presentation'><a>$fecha1</a></li><br>";
		         }
			 }
			 $laConexion->close();
		?>
	</ul>
</section>
</body>
</html>