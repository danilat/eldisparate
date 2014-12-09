import de.eldisparate.Autonomy
import de.eldisparate.ExporterCountry
import de.eldisparate.ImporterCountry

class BootStrap {

    def init = { servletContext ->
		def path = servletContext.getRealPath("/")
		
		//println path
		
		def autonomiesNames =["ANDALUCIA", "ARAGON", "ASTURIAS", "BALEARES", "CANARIAS",
		"CANTABRIA", "CASTILLA LA MANCHA", "CASTILLA LEON", "CATALUNYA", "CIUDAD AUTONOMA DE CEUTA",
		"CIUDAD AUTONOMA DE MELILLA", "COMUNIDAD VALENCIANA", "EXTREMADURA", "GALICIA",
		"LA RIOJA","MADRID", "MURCIA", "NAVARRA", "PAIS VASCO", "SIN DETERMINAR"]
		
		autonomiesNames.each{ name ->
			def autonomy = Autonomy.findByName(name)
			if(!autonomy){
				autonomy = new Autonomy(name: name)
				autonomy.save(flush:true,failOnError:true)
				saveExporterCountries("data/${name.toLowerCase().replaceAll(' ', '_')}/Importaciones.dat", autonomy, servletContext)
				saveImporterCountries("data/${name.toLowerCase().replaceAll(' ', '_')}/Exportaciones.dat", autonomy, servletContext)
			}
		}
		
		saveCSVDataToAutonomies("data/Exportaciones.dat", 'totalExports', servletContext)
		saveCSVDataToAutonomies("data/Importaciones.dat", 'totalImports', servletContext)
		saveCSVDataToAutonomies("data/armasExportacion.dat", 'gunsExports', servletContext)
		saveCSVDataToAutonomies("data/armasImportacion.dat", 'gunsImports', servletContext)
		
		
		loadCSVINEData("data/DatosINE.csv", servletContext)
		
    }
	def saveExporterCountries(path, autonomy, context){
		def file = context.getResourceAsStream(path)
		if(file){
			file.eachLine() { line ->  
			    def field = line.tokenize("#")
				if(field[0] && field[0]!="PAIS" && field[0]!="Total"){
				def countryName = field[0]
				BigInteger money = new BigDecimal(field[2].replaceAll("\\.","").replaceAll(",","."))
				def country = new ExporterCountry(name:countryName, money: money.toString(), autonomy: autonomy)
				country.save(flush:true,failOnError:true)
				}
			}
		}else{
			println "${path} no existe"
		}
	}
	def saveImporterCountries(path, autonomy, context){
		def file = context.getResourceAsStream(path)
		if(file){
			file.eachLine() { line ->  
			    def field = line.tokenize("#")
				if(field[0] && field[0]!="PAIS" && field[0]!="Total"){
				def countryName = field[0]
				BigInteger money = new BigDecimal(field[2].replaceAll("\\.","").replaceAll(",","."))
				def country = new ImporterCountry(name: countryName, money: money.toString(), autonomy: autonomy)
				country.save(flush:true,failOnError:true)
				}
			}
		}else{
			println "${path} no existe"
		}
	}

	def saveCSVDataToAutonomies(path, attributeToSave, context){
		def file = context.getResourceAsStream(path)
		file.eachLine() { line ->  
		    def field = line.tokenize("#")  
			def autonomyName = field[0]
			if(field[2] && field[2]!="VALOR"){
				BigInteger money = new BigDecimal(field[2].replaceAll("\\.","").replaceAll(",","."))
				def autonomy = Autonomy.findByName(autonomyName)
				if(autonomy){
					autonomy[attributeToSave] = money.toString()
				}
			}
		}
	}
	
	def loadCSVINEData(path, context){
		def file = context.getResourceAsStream(path)
		file.eachLine() { line ->  
		    def field = line.tokenize("#")  
			def autonomyName = field[0]
			def autonomy = Autonomy.findByName(autonomyName)
			if(autonomy){
				autonomy.realName = field[1]
				autonomy.area = field[7]
				autonomy.habitants = field[2]
				autonomy.density = field[8]
				autonomy.pib = field[3]
				autonomy.ranking = field[4]
				autonomy.president = "${field[9]} - ${field[10]}"
				autonomy.pibPerCapita = field[5]
				autonomy.rankingPerCapita = field[6]
			}
		}
	}
	

    def destroy = {
    }
}
