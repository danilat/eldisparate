import de.eldisparate.Autonomy
import de.eldisparate.ExporterCountry
import de.eldisparate.ImporterCountry

class BootStrap {

    def init = { servletContext ->
		def path = servletContext.getRealPath("/")
		
		def autonomiesNames =["ANDALUCIA", "ARAGON", "ASTURIAS", "BALEARES", "CANARIAS",
		"CANTABRIA", "CASTILLA LA MANCHA", "CASTILLA LEON", "CATALUNYA", "CIUDAD AUTONOMA DE CEUTA",
		"CIUDAD AUTONOMA DE MELILLA", "COMUNIDAD VALENCIANA", "EXTREMADURA", "GALICIA",
		"LA RIOJA","MADRID", "MURCIA", "NAVARRA", "PAIS VASCO", "SIN DETERMINAR"]
		
		autonomiesNames.each{ name ->
			def autonomy = Autonomy.findByName(name)
			if(!autonomy){
				autonomy = new Autonomy(name: name)
				autonomy.save(flush:true,failOnError:true)
				saveExporterCountries("${path}data/${name.toLowerCase().replaceAll(' ', '_')}/Importaciones.dat", autonomy)
				saveImporterCountries("${path}data/${name.toLowerCase().replaceAll(' ', '_')}/Exportaciones.dat", autonomy)
			}
		}
		
		saveCSVDataToAutonomies("${path}/data/Exportaciones.dat", 'totalExports')
		saveCSVDataToAutonomies("${path}/data/Importaciones.dat", 'totalImports')
		saveCSVDataToAutonomies("${path}/data/armasExportacion.dat", 'gunsExports')
		saveCSVDataToAutonomies("${path}/data/armasImportacion.dat", 'gunsImports')
		
		
		loadCSVINEData("${path}/data/DatosINE.csv")
		
    }
	def saveExporterCountries(path, autonomy){
		File file = new File(path)
		if(file.exists()){
			file.eachLine() { line ->  
			    def field = line.tokenize("#")
				if(field[0] && field[0]!="PAIS" && field[0]!="Total"){
				def countryName = field[0]
				BigInteger money = new BigDecimal(field[2].replaceAll("\\.","").replaceAll(",",".")) * 1000
				def country = new ExporterCountry(name:countryName, money: money.toString(), autonomy: autonomy)
				country.save(flush:true,failOnError:true)
				}
			}
		}else{
			println "${path} no existe"
		}
	}
	def saveImporterCountries(path, autonomy){
		File file = new File(path)
		if(file.exists()){
			file.eachLine() { line ->  
			    def field = line.tokenize("#")
				if(field[0] && field[0]!="PAIS" && field[0]!="Total"){
				def countryName = field[0]
				BigInteger money = new BigDecimal(field[2].replaceAll("\\.","").replaceAll(",",".")) * 1000
				def country = new ImporterCountry(name: countryName, money: money.toString(), autonomy: autonomy)
				country.save(flush:true,failOnError:true)
				}
			}
		}else{
			println "${path} no existe"
		}
	}

	def saveCSVDataToAutonomies(path, attributeToSave){
		File file = new File(path)
		file.eachLine() { line ->  
		    def field = line.tokenize("#")  
			def autonomyName = field[0]
			if(field[2] && field[2]!="VALOR"){
				BigInteger money = new BigDecimal(field[2].replaceAll("\\.","").replaceAll(",",".")) * 1000
				def autonomy = Autonomy.findByName(autonomyName)
				if(autonomy){
					autonomy[attributeToSave] = money.toString()
				}
			}
		}
	}
	
	def loadCSVINEData(path){
		File file = new File(path)
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
