package de.eldisparate

class GoogleChartsTagLib {
	def countriesService
	
	def barChart = { attrs, body ->
		println attrs.totalOfMoney
		def totalOfMoney = new BigDecimal(attrs.totalOfMoney.replaceAll("\\.","").replaceAll(",","."))
		def countries = attrs.countries
		def height = 60
		def width = 440
		def barColor = "B8002D"
		def background = "bg,s,FFEBBE"
		def countryNames = ""
		def percentages = ""//"80.23,47.541,65.574,100"
		def counter = 0
		def acumulated = 0
		countries.each{
			countryNames += "|${it.name}"
			def money = new BigDecimal("${it.money}".replaceAll("\\.","").replaceAll(",","."))
			acumulated += money
			percentages += (money/totalOfMoney*100).toString()
			counter++
			height += 25
			if(counter<countries.size()){
				percentages += ","
			}
		}
		if(acumulated<totalOfMoney){
			def money = totalOfMoney - acumulated
			percentages += "," + (money/totalOfMoney*100).toString()
			countryNames += "|Destino desconocido"
		}
		String imageSrc = "http://chart.apis.google.com/chart?chf=${background}&chxt=x,y&chbh=23,4,9&chs=${width}x${height}&cht=bhs&chco=${barColor}&chxs=0,000000,14,1,l,000000|1,000000,14,0,l,000000&chxl=1:${countryNames}&chd=t:${percentages}"
		out << imageSrc
	}
	
	def worldMap = { attrs, body ->
		def countries = attrs.countries
		
		def conflictiveCountries = countriesService.conflictives()
		
		def countryCodes = conflictiveCountries.collect{ conflictive ->
			if(countries.name.contains(conflictive.name)){
				return conflictive.code
			}
		}.join()
		def background = "FFEBBE"
		def countryColor = "B8002D"
		String imageSrc = "http://chart.apis.google.com/chart?chf=bg,s,${background}&chs=440x220&cht=t&chco=${background}|${countryColor}&chld=${countryCodes}&chd=s:____&chtm=world"
		out << imageSrc
	}
	
	def conflictiveCountries = { attrs, body ->
		def countries = attrs.countries
		
		def conflictiveCountries = countriesService.conflictives()
		
		def countryCodes = conflictiveCountries.collect{ conflictive ->
			def country = countries.find{it.name==conflictive.name}
			if(country){
				out << "<span class=\"text_paises\">${conflictive.realName}: ${country.money} €</span><br /> "
			}
		}.join()
	}
}
