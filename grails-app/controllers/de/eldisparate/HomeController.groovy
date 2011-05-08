package de.eldisparate

class HomeController {
	def countriesService

    def index = { 
		return [conflictives: countriesService.conflictives()]
	}

	def show = { 
		def name = params.id.toUpperCase().replaceAll("-", " ")
		def autonomy = Autonomy.findByName(name)
		if(autonomy){
			return [autonomy:autonomy, conflictives: countriesService.conflictives()]
		}else{
			render "No existe la Comunidad Autónoma"
		}
	}
}
