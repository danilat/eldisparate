<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml" lang="es"> 
<head> 
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" /> 
 
<title>eldisparate</title> 
<link href="css/reset.css" rel="stylesheet" type="text/css" media="screen" /> 
<link href="css/public.css" rel="stylesheet" type="text/css" media="screen" /> 
<link rel="shortcut icon" href="img/favicon.ico"> 
</head> 
<body> 
<div id="wrap"> 
	<div id="head"> 
		<div id="col8" /> 
		<a href="/"><img src="img/logo.png" /><h1>El Disparate</h1></a> 
		</div> 
		<div id="col9" /> 
		<a href="http://twitter.com/eldisparate" target="_blank"><img src="img/ico_twitter.png" /></a> 
		<a href="http://facebook.com/eldisparate"  target="_blank"><img src="img/ico_facebook.png" /></a> 
		<a href="http://flickr.com/photos/eldisparate"  target="_blank"><img src="img/ico_flickr.png" /></a> 
		<a href="http://open.spotify.com/user/_chrysalis_/playlist/3tNgbXdOTKmpykds2SpGFg"  target="_blank"><img src="img/ico_spotify.png" /></a> 
		<a href="http://vimeo.com/eldisparate" target="_blank"><img src="img/ico_vimeo.png" /></a> 
		<a href="http://youtube.com/eldisparate"  target="_blank"><img src="img/ico_youtube.png" /></a> 
	</div> 
	</div>	
	<div id="content"> 
		<div class="linea4px"></div> 
		<div class="linea2px"></div> 
		<div id="col1"><img src="img/mapas_comunidades/${autonomy.name.toLowerCase().replaceAll(' ', '_')}.png" /></div> 
		<div id="col2"> 
			<span class="title_comunidad">${autonomy.realName}</span><br /><br /><br /><br /> 
			<span class="title_datos">Datos generales:</span><br /> 
			<span class="text_datos"> 
			${autonomy.area} km²<br /> 
			${autonomy.habitants} hab.²<br /> 
			TODO: 26,57 hab/km²<br /><br /> 
 
			${autonomy.president}<br /><br /> 
 
			PIB (nominal)	Puesto ${autonomy.ranking}<br /> 
			${autonomy.pib} <br /></span> 
		</div> 
		<!-- INICIO BLOQUE --> 
		<div class="linea4px"></div> 
		<div class="linea2px"></div> 
		
		<div id="col3"> 
			<span class="title_imex">Importa</span><br /> 
			<span class="text_imex">${autonomy.totalImports}</span> 
		</div> 
		<div id="col4"> 
			<span class="title_imex">Exporta</span> 
			<span class="text_imex">${autonomy.totalExports}</span> 
		</div> 
		<br class="brr" /><br /><br /> 
		<div class="quote">Todo tipo de material, animales, leche, azucar, cacao, <br />plantas, vehículos, aviones, 
barcos, muebles, máquinas, metales, químicos,...</div> 
		<div id="col3"> 
		<iframe src="http://player.vimeo.com/video/23420421?title=0&amp;byline=0&amp;portrait=0&amp;autoplay=1&amp;loop=1" width="381" height="111" frameborder="0"></iframe><br /><br /> 
		</div> 
		<div id="col3"> 
		<iframe src="http://player.vimeo.com/video/23420378?title=0&amp;byline=0&amp;portrait=0&amp;autoplay=1&amp;loop=1" width="381" height="111" frameborder="0"></iframe><br /><br /> 
		</div> 
		<!-- FIN BLOQUE --> 
				<!-- INICIO BLOQUE --> 
		<div class="linea4px"></div> 
		<div class="linea2px"></div> 
		
		<div id="col3"> 
			<span class="pretitle_imex">Importa</span><br /> 
			<span class="title_imex">En Armas</span><br /> 
			<span class="text_imex">${autonomy.gunsImports}</span><br /><br /> 
			
		</div> 
		<div id="col4"> 
			<span class="pretitle_imex">Exporta</span><br /> 
			<span class="title_imex">En Armas</span> 
			<span class="text_imex">${autonomy.gunsExports}</span><br /><br /> 
		</div> 
		<br class="brr" /><br /><br /> 
		<div class="quote">Todo tipo de material, animales, leche, azucar, cacao, <br />plantas, vehículos, aviones, 
barcos, muebles, máquinas, metales, químicos,...</div> 
		<div id="col3"> 
		
		
		<iframe src="http://player.vimeo.com/video/23422632?title=0&amp;byline=0&amp;portrait=0&amp;autoplay=1&amp;loop=1" width="441" height="80" frameborder="0"></iframe> 
		<br /><br /> 
		</div> 
		<div id="col4"> 
		<iframe src="http://player.vimeo.com/video/23422635?title=0&amp;byline=0&amp;portrait=0&amp;autoplay=1&amp;loop=1" width="441" height="80" frameborder="0"></iframe><br /><br /> 
		</div> 
		<!-- FIN BLOQUE --> 
		<!-- INICIO BLOQUE --> 
		<div class="linea4px"></div> 
		<div class="linea2px"></div> 
		<div id="col5">	
			<span class="pretitle_imex">Países a los que ${autonomy.realName}</span> 
		</div> 
		<div id="col3"> 
			<span class="title_imex">Importa</span><br /> 
		</div> 
		<div id="col4"> 
			<span class="title_imex">Exporta</span><br /> 
		</div> 
		<br class="brr" /><br /><br /> 
		<div class="quote">Todo tipo de material, animales, leche, azucar, cacao, <br />plantas, vehículos, aviones, 
barcos, muebles, máquinas, metales, químicos,...</div> 
		<div id="col3"> 
			<img src="${barChart()}" alt="Importaciones" />
		</div> 
		<div id="col4"> 
			<img src="${barChart()}" alt="Exportaciones" />
		</div> 
		<div id="col3"> 
		<iframe src="http://player.vimeo.com/video/23420443?title=0&amp;byline=0&amp;portrait=0&amp;autoplay=1&amp;loop=1" width="440" height="88" frameborder="0"></iframe><br /><br /> 
		</div> 
			<div id="col4"> 
		<iframe src="http://player.vimeo.com/video/23420400?title=0&amp;byline=0&amp;portrait=0&amp;autoplay=1&amp;loop=1" width="440" height="88" frameborder="0"></iframe><br /><br /> 
		</div>	
		
		
		
		
		
		<!-- FIN BLOQUE --> 
		<div class="linea4px"></div> 
		<div class="linea2px"></div> 
		<div id="col5">	
			<span class="title_dest">Algunos destinos <span class="red">preocupantes</span></span><br /><br /> 
			<div class="quote"> 
 
Más allá de las cifras, lo más alarmante es que se han vendido cantidades muy
significativas de material de defensa y de doble uso a destinos preocupantes, bien
porque están en conflicto armado, sufren situaciones de grave inestabilidad interna,
porque en ellos se producen graves violaciones de los derechos humanos, etc</div><br /><br /> 
</div> 
<div id="col3"> 
<img src="${worldMap(autonomy: autonomy)}" alt=""/>
</div> 
<div id="col4"> 
	${conflictiveCountries()}
<span class="text_paises">Angola: 23.000</span><br /> 
<span class="text_paises">Angola: 23.000</span><br /> 
</div> 
<br class="brr" /> 
<iframe src="http://player.vimeo.com/video/23420434?title=0&amp;byline=0&amp;portrait=0&amp;autoplay=1&amp;loop=1" width="326" height="223" frameborder="0"></iframe> 
<br class="brr" /><br /><br /> 
 
	<!-- INICIO BLOQUE --><!-- A PARTIR DE AQUI NO HAY QUE TOCAR NADA MAS :) --> 
		<div class="linea4px"></div> 
		<div class="linea2px"></div> 
		<span class="title_dest">Tipos de armas</span><br /><br />	
		<div class="quote">Todo tipo de material, animales, leche, azucar, cacao, <br />plantas, vehículos, aviones, 
barcos, muebles, máquinas, metales, químicos,...</div><br /><br /> 
		<img src="img/armas.jpg" /><br /><br /><br /><br /> 
		
		
		<div id="col6"><img src="img/tipo1.png" /></div> 
		<div id="col7"> 
		<span class="text_tipo"> 
		<br /><span class="nar">TIPO 1. </span> <strong>Armas de guerra (Excepto los revólveres, pistolas y armas blancas):</strong><br /> 
		- Autopropulsadas<br /> 
		- Lanzacohetes, lanzallamas, lanzagranadas, lanzatorpedos<br /><br /><br /></span> 
		</div> 
		
		
		<div id="col6"><img src="img/tipo2.png" /></div> 
		<div id="col7"> 
		<span class="text_tipo"> 
		<br /><strong><span class="nar">TIPO 2. </span>Las demás armas de fuego y artefactos similares que utilicen la deflagración de pólvora (por ejemplo:armas de caza, armas de avancarga, pistolas lanzacohetes y demás artefactos concebidos para lanzar cohetes de señal, pistolas y revólveres de fogeo, pistolas de matarife, cañanos lanzacabos) partes y accesorios d elos artículos de las partidas 9301 a 9304</strong><br /> 
- Armas de avancarga<br /> 
- Armas largas de caza o tiro deportivo que tengan, por lo menos, un cañon de ánima lisa<br /> 
- Las demás armas largas de caza o tiro deportivo<br /><br /><br /></span> 
		</div> 
 
 
		<div id="col6"><img src="img/tipo3.png" /></div> 
		<div id="col7"> 
		<span class="text_tipo"> 
		<br /><strong><span class="nar">TIPO 3. </span>Partes y accesorios de los artículos de las partidas 9301 a 9304</strong><br /> 
- De revólveres o pistolas<br /> 
- Cañones de ánima lisa<br /> 
- De armas de guerra de la partida 9301<br /><br /><br /></span> 
		</div> 
		
		
 
		<div id="col6"><img src="img/tipo4.png" /></div> 
		<div id="col7"> 
		<span class="text_tipo"> 
		<br /><strong><span class="nar">TIPO 4. </span>Bombas, granadas, torpedos, minas, misiles, cartuchos y demás municiones y proyectiles, y sus partes, incluidas las postas, perdigones y tacos para cartuchos</strong><br /> 
- Cartuchos<br/> 
- Vainas<br/> 
- Para revólveres y pistolas de la partida 9302 y para pistolas ametralladoras de la partida 9301<br/> 
- Para armas de guerra<br/> 
- Cartuchos de percusión central<br/> 
- Cartuchos de percusión anular<br /><br /><br /></span> 
		</div> 
		
		<br class="brr" /><br /><br /> 
			
	<iframe src="http://player.vimeo.com/video/23422714?title=0&amp;byline=0&amp;portrait=0&amp;autoplay=1&amp;loop=1" width="347" height="108" frameborder="0"></iframe>	
		
		<br class="brr" /><br /><br /> 
		<div class="linea4px"></div> 
		<div class="linea2px"></div> 
		
	</div> 
	
	<div id="foot"> 
		<div id="col10"><br />* Los datos de esta página corresponden al 2009. <a href="info.html">+ Más información</a><br/> 
		Esto es un proyecto <a href="http://www.abredatos.es"  target="_blank">Abredatos 2011</a> 
		</div> 
		<div id="col11"> 
		
		<img src="img/equipo.png" class="flo-left" /> 
		<span class="bold"><br /><span class="bold">El Disparate continua en su <a href="http://blog.eldisparate.de"  target="_blank">blog </a></span> <br /><br />Somos el equipo General Huesconsin #T34: <br /></span> 
						<a href="http://twitter.com/tobiotive"  target="_blank">@tobiotive</a> Toño García<br /> 
						<a href="http://twitter.com/dani_latorre"  target="_blank">@dani_latorre</a> Dani Latorre <br/> 
						<a href="http://twitter.com/pensieve"  target="_blank">@pensieve</a> Mamen Pradel <br/> 
						<a href="http://twitter.com/pordeciralgo"  target="_blank">@pordeciralgo</a> Agustín Raluy<br/><br/><br/><br/><br/> 
		</div> 
 
</div> 
</body> 
</html>