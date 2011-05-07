package de.eldisparate

class GoogleChartsTagLib {
	def barChart = { attrs, body ->
		//def autonomy = attrs.autonomy
		//def countries = autonomy.exportCountries
		def height = 200
		def width = 440
		def barColor = "B8002D"
		def background = "bg,s,FFEBBE"
		def countries = "|ITALIA|FRANCIA|checoslovaquia|tuputamadre"
		def percentages = "80.23,47.541,65.574,100"
		String imageSrc = "http://chart.apis.google.com/chart?chf=${background}&chxt=x,y&chbh=23,4,9&chs=${width}x${height}&cht=bhs&chco=${barColor}&chxs=0,000000,14,1,l,000000|1,000000,14,0,l,000000&chxl=1:${countries}&chd=t:${percentages}"
		out << imageSrc
	}
	
	def worldMap = { attrs, body ->
		//def autonomy = attrs.autonomy
		//def countries = autonomy.exportCountries
		def countrycCodes = "ESAO"
		def background = "FFEBBE"
		def countryColor = "B8002D"
		String imageSrc = "http://chart.apis.google.com/chart?chf=bg,s,${background}&chs=440x220&cht=t&chco=${background}|${countryColor}&chld=${countrycCodes}&chd=s:____&chtm=world"
		out << imageSrc
	}
}
