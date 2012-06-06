<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml" lang="es">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />

<title>elDisparate - ¿En qué conflictos participa ${autonomy.realName}?</title>
<link rel="alternate" type="application/rss+xml" href="http://blog.eldisparate.de/rss" />
<link href="css/reset.css" rel="stylesheet" type="text/css" media="screen" />
<link href="css/public.css" rel="stylesheet" type="text/css" media="screen" />
<link rel="shortcut icon" href="img/favicon.ico">
</head>
<body>
<div id="wrap">
	<div id="head">
			<div id="col8" />
			<a href="/"><img src="img/logo.png"  class="flo-left" /><h1>elDisparate</h1></a>
			<h2><a href="/"><img src="img/logo_texto.png" /></a><br/>¿En qué conflictos participa tu Comunidad Autónoma?<br/>Importación y exportación de armas en ${autonomy.realName} en 2009</h2>
			</div>
			<div id="col9" />
			<a href="http://twitter.com/eldisparate" target="_blank"><img src="img/ico_twitter.png" /></a>
			<a href="http://facebook.com/eldisparate"  target="_blank"><img src="img/ico_facebook.png" /></a>
			<a href="http://flickr.com/photos/eldisparate"  target="_blank"><img src="img/ico_flickr.png" /></a>
			<a href="http://bit.ly/eldisparate_spotify"  target="_blank"><img src="img/ico_spotify.png" /></a>
			<a href="http://vimeo.com/eldisparate" target="_blank"><img src="img/ico_vimeo.png" /></a>
		</div>
	</div>
	<div id="content">
		<div class="linea4px"></div>
		<div class="linea2px"></div>
		<div id="col1"><img src="img/mapas_comunidades/${autonomy.name.toLowerCase().replaceAll(' ', '_')}.png" /></div>
		<div id="col2">
			<span class="title_comunidad">${autonomy.realName}</span><br /><br /><br /><br />
			<span class="title_datos">Datos generales en 2009:</span><br /><br />
			<span class="text_datos">
			Superficie: ${autonomy.area} km²<br /> 
			Población: ${autonomy.habitants} hab.²<br /><br />
			
			PIB: ${autonomy.pib} (#${autonomy.ranking} en España) <br />
			PIB (per cápita): ${autonomy.pibPerCapita} (#${autonomy.rankingPerCapita} en España)<br /><br />

			Presidente: ${autonomy.president}<br /><br /></span>
		</div>
		<!-- INICIO BLOQUE -->
		<div class="linea4px"></div>
		<div class="linea2px"></div>

		<div id="col3">
			<span class="title_imex">Importa</span><br />
			<span class="text_imex"><g:formatNumber number="${autonomy.totalImports?:0}" type="number"/> €</span>
		</div>
		<div id="col4">
			<span class="title_imex">Exporta</span>
			<span class="text_imex"><g:formatNumber number="${autonomy.totalExports?:0}" type="number"/> €</span>
		</div>
		<br class="brr" /><br /><br />
		<div class="quote">Totales. Incluyen todo tipo de bienes.<br />Alimentos, animales, plantas, vehículos, muebles, máquinas, metales, químicos...</div>
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
			<span class="text_imex"><g:formatNumber number="${autonomy.gunsImports?:0}" type="number"/> €</span><br /><br />

		</div>
		<div id="col4">
			<span class="pretitle_imex">Exporta</span><br />
			<span class="title_imex">En Armas</span><br />
			<span class="text_imex"><g:formatNumber number="${autonomy.gunsExports?:0}" type="number"/> €</span><br /><br />
		</div>
		<br class="brr" />
		<div class="quote">Armas de guerra, armas de fuego, explosivos, municiones, proyectiles, armas blancas, partes y accesorios</div>
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
			<span class="title_dest">Países a los que <br/>${autonomy.realName}</span>
			<br/>
			<span class="quote">* Se muestran los países más representativos</span>
		</div>
		<div id="col3">
			<span class="pretitle_imex">Importa armas</span>
		</div>
		<div id="col4">
			<span class="pretitle_imex">Exporta armas</span>
		</div>

		<div id="col3">
			<img src="${barChart(countries:autonomy.importsFrom, totalOfMoney: autonomy.gunsImports)}" alt="Importaciones" />
		</div>
		<div id="col4">
			<img src="${barChart(countries:autonomy.exportsTo, totalOfMoney: autonomy.gunsExports)}" alt="Exportaciones" />
		</div>
		<br class="brr"/> 
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
			<span class="title_dest">Destinos <span class="red">disparatados</span><br /><span class="pq"> preocupantes *</span></span><br /><br />
			<div class="quote">

* <span class="bold">¿Qué son destinos <i>preocupantes</i>?</span> Aquellos que están en conflicto armado, <br />sufren situaciones de grave inestabilidad interna o en los que se producen graves violaciones de los derechos humanos.</div><br /><br /><br />
</div>
<div id="col3">
<img src="${worldMap(countries: autonomy.exportsTo)}" alt=""/>
</div>
<div id="col4">
${conflictiveCountries(countries: autonomy.exportsTo)}
</div>
<br class="brr" />
<iframe src="http://player.vimeo.com/video/23420434?title=0&amp;byline=0&amp;portrait=0&amp;autoplay=1&amp;loop=1" width="326" height="223" frameborder="0"></iframe>
<br class="brr" /><br /><br />

	<!-- INICIO BLOQUE --><!-- A PARTIR DE AQUI NO HAY QUE TOCAR NADA MAS :) -->
		<div class="linea4px"></div>
		<div class="linea2px"></div>
		<span class="title_dest">Tipos de armas</span><br /><br />
		<div class="quote">Estos 5 tipos de armas son los recogidos en el registro de Comercio Exterior.<br />Desgraciadamente, todavía quedan fuera muchos otros tipos de material bélico...</div><br /><br />
		<img src="img/armas.jpg" /><br /><br /><br />


		<div id="col6"><img src="img/tipo1.png" /></div>
		<div id="col7">
		<span class="text_tipo">
		<br /><span class="bold"><span class="nar">TIPO 1. </span> <strong>Armas de guerra</span><br />
		- Piezas de artillería: cañones, obuses, morteros...<br />
		- Armas autopropulsadas<br />
		- Lanzacohetes, lanzallamas, lanzagranadas, lanzatorpedos...<br /></span>
		</div>


		<div id="col6"><img src="img/tipo2.png" /></div>
		<div id="col7">
		<span class="text_tipo">
		<br /><span class="bold"><span class="nar">TIPO 2. </span>Armas de fuego</span><br />
- Armas de avancarga<br />
- Armas largas de caza o tiro deportivo con cañón<br />
- Las demás armas largas de caza o tiro deportivo<br />
- Dispositivos portátiles y fijos para el lanzamiento de arpones, guías...<br />
- Agresivos químicos<br /></span>
		</div>


		<div id="col6"><img src="img/tipo3.png" /></div>
		<div id="col7">
		<span class="text_tipo">
		<br /><span class="bold"><span class="nar">TIPO 3. </span>Partes y accesorios</span><br />
- De armas de guerra<br />
- De armas de fuego<br /></span>
		</div>



		<div id="col6"><img src="img/tipo4.png" /></div>
		<div id="col7">
		<span class="text_tipo">
		<br /><span class="bold"><span class="nar">TIPO 4. </span>Explosivos, municiones y proyectiles</span><br />
- Bombas<br/>
- Granadas<br/>
- Torpedos<br/>
- Minas<br/>
- Misiles<br/>
- Cartuchos, vainas y proyectiles<br /></span>
		</div>


		<div id="col6"><img src="img/tipo5.png" /></div>
		<div id="col7">
		<span class="text_tipo">
		<br /><span class="bold"><span class="nar">TIPO 5. </span>Armas blancas</span><br />
- Sables<br/>
- Espadas<br/>
- Bayonetas<br/>
- Lanzas<br/>
- Otras armas blancas<br/>
- Partes, fundas y accesorios<br /><br /></span>
		</div>


		<br class="brr" /><br /><br />

	<iframe src="http://player.vimeo.com/video/23422714?title=0&amp;byline=0&amp;portrait=0&amp;autoplay=1&amp;loop=1" width="347" height="108" frameborder="0"></iframe>

		<br class="brr" /><br /><br />
		<div class="linea4px"></div>
		<div class="linea2px"></div>

	</div>
	
	<div id="foot">
		<div id="col10"><br />Todos los datos corresponden al año 2009 [<a href="http://blog.eldisparate.de/datos" target="_blank">+info</a>]<br/><br/>
		<a href="http://www.eldisparate.de">elDisparate</a> es un proyecto <a href="http://www.abredatos.es"  target="_blank">Abredatos 2011</a>
		</div>
		<div id="col11">

		<a href="http://blog.eldisparate.de/equipo"  target="_blank"><img src="img/equipo.png" class="flo-left" /></a>
		<span class="bold"><br />Equipo General Huesconsin #T34: <br /></span>
						<a href="http://twitter.com/tobiotive"  target="_blank">@tobiotive</a> Toño García<br />
						<a href="http://twitter.com/dani_latorre"  target="_blank">@dani_latorre</a> Dani Latorre <br/>
						<a href="http://twitter.com/pensieve"  target="_blank">@pensieve</a> Mamen Pradel <br/>
						<a href="http://twitter.com/pordeciralgo"  target="_blank">@pordeciralgo</a> Agustín Raluy<br/><br/><br/>
		</div>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-23186960-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

</body> 
</html>