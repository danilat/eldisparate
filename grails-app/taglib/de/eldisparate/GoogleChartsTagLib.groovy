package de.eldisparate

class GoogleChartsTagLib {
	def countriesService
	
	def barChart = { attrs, body ->
		if(attrs.totalOfMoney){
			def totalOfMoney = new BigDecimal(attrs.totalOfMoney.replaceAll("\\.","").replaceAll(",","."))
			def countries = attrs.countries
			def height = 60
			def width = 440
			def barColor = "B8002D"
			def background = "bg,s,FFEBBE"
			def countryNames = ""
			def percentages = ""
			def counter = 0
			def acumulated = 0
			if(countries){
				def top20Countries = []
				
				countries.each{
					def money = new BigDecimal("${it.money}".replaceAll("\\.","").replaceAll(",","."))
					def percentage = (money/totalOfMoney*100)
					top20Countries << [name: it.name, money: money, percentage: percentage]
				}
				top20Countries.sort{ -it.percentage }
				if(top20Countries.size() > 20){
					top20Countries = top20Countries[0..20]
				}
								
				top20Countries.each{
						countryNames += "|${it.name}"
						acumulated += it.money
						percentages += it.percentage.toString()
						counter++
						height += 25
						if(counter<top20Countries.size()){
							percentages += ","
						}
				}
			}
		
		if(acumulated<totalOfMoney){
			def money = totalOfMoney - acumulated
			percentages += "," + (money/totalOfMoney*100).toString()
			countryNames += "|Destino desconocido"
		}
		String imageSrc = "http://chart.apis.google.com/chart?chf=${background}&chxt=x,y&chbh=23,4,9&chs=${width}x${height}&cht=bhs&chco=${barColor}&chxs=0,000000,14,1,l,000000|1,000000,14,0,l,000000&chxl=1:${countryNames}&chd=t:${percentages}"
		out << imageSrc
		}else{
			out << resource(dir:'img',file:'nohaydatos.png')
		}
	}
	
	def worldMap = { attrs, body ->
		def countries = attrs.countries
		def countryCodes = ""
		if(countries){
		def conflictiveCountries = countriesService.conflictives()
		countryCodes = conflictiveCountries.collect{ conflictive ->
			if(countries.name.contains(conflictive.name)){
				return conflictive.code
			}
		}.join()
		}
		def background = "FFEBBE"
		def countryColor = "B8002D"
		String imageSrc = "http://chart.apis.google.com/chart?chf=bg,s,${background}&chs=440x220&cht=t&chco=${background}|${countryColor}&chld=${countryCodes}&chd=s:____&chtm=world"
		out << imageSrc
	}
	
	def conflictiveCountries = { attrs, body ->
		def countries = attrs.countries
		def conflictiveSells = false
		def conflictiveCountries = countriesService.conflictives()
		
		def countryCodes = conflictiveCountries.collect{ conflictive ->
			
			def country = countries.find{it.name==conflictive.name}
			if(country){
				conflictiveSells = true
				out << "<span class=\"text_paises\">${conflictive.realName}: ${formatNumber(number:country.money, type:'number')} €</span><br /> "
			}
		}.join()
		
		if(!conflictiveSells){
			out << "<span class=\"text_paises\">No se exportaron armas a países preocupantes.</span><br /> "
		}
	}
}
