import de.eldisparate.Autonomy
class BootStrap {

    def init = { servletContext ->
	
		def autonomiesNames =["ANDALUCIA", "ARAGON", "ASTURIAS", "BALEARES", "CANARIAS",
		"CANTABRIA", "CASTILLA LA MANCHA", "CASTILLA LEON", "CATALUNYA", "CIUDAD AUTONOMA DE CEUTA",
		"CIUDAD AUTONOMA DE MELILLA", "COMUNIDAD VALENCIANA", "EXTREMADURA", "GALICIA",
		"LA RIOJA","MADRID", "MURCIA", "NAVARRA", "PAIS VASCO", "SIN DETERMINAR"]
		
		autonomiesNames.each{ name ->
			def autonomy = Autonomy.findByName(name)
			if(!autonomy){
				autonomy = new Autonomy(name: name)
				autonomy.save(flush:true,failOnError:true)
			}
		}
		
		def path = servletContext.getRealPath("/")
		
		saveCSVDataToAutonomies("${path}/data/Exportaciones.dat", 'totalExports')
		saveCSVDataToAutonomies("${path}/data/Importaciones.dat", 'totalImports')
		saveCSVDataToAutonomies("${path}/data/armasExportacion.dat", 'gunsExports')
		saveCSVDataToAutonomies("${path}/data/armasImportacion.dat", 'gunsImports')
		
		
		loadCSVINEData("${path}/data/DatosINE.csv")
		
    }
	def saveCSVDataToAutonomies(path, attributeToSave){
		File file = new File(path)
		file.eachLine() { line ->  
		    def field = line.tokenize("#")  
			def autonomyName = field[0]
			def money = field[2]
			def autonomy = Autonomy.findByName(autonomyName)
			if(autonomy){
				autonomy[attributeToSave] = money
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
