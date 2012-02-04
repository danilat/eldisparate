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
			def text = '<h1>Si puedes verme <a href="http://www.youtube.com/watch?v=8rGecaVVlyU" target="blank">ya estás muerto</a></h1><img src="' + g.resource(dir:"img", file:'sasa.jpg') +'"><p>Ande vas, Mocé!!! Que eso no existe!!</p>'
			
			render text
		}
	}
}
