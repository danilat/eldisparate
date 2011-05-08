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
		println Autonomy.count()
		
		saveCSVDataToAutonomies("/Users/danilat/grails_apps/eldisparate/data/Exportaciones.dat", 'totalExports')
		saveCSVDataToAutonomies("/Users/danilat/grails_apps/eldisparate/data/Importaciones.dat", 'totalImports')
		saveCSVDataToAutonomies("/Users/danilat/grails_apps/eldisparate/data/armasExportacion.dat", 'gunsExports')
		saveCSVDataToAutonomies("/Users/danilat/grails_apps/eldisparate/data/armasImportacion.dat", 'gunsImports')
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
	

    def destroy = {
    }
}
