package de.eldisparate

class HomeController {

    def index = { }

	def show = { 
		def urlName = params.id
		def autonomy = Autonomy.findByUrlName(urlName)
		if(autonomy){
			return [autonomy:autonomy]
		}else{
			render "No existe la Comunidad Autónoma"
		}
	}
}
