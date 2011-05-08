package de.eldisparate

class CountriesService {

    static transactional = false

	def conflictives(){
		def countries = [
			[name: "ANGOLA", realName:"Angola", code:"AO"],
			[name: "ARABIA SAUDI", realName:"Arabia Saudí", code:"SA"],
			[name: "BOLIVIA", realName:"Bolivia", code:"BO"],
			[name: "COLOMBIA", realName:"Colombia", code:"CO"],
			[name: "ESTADOS UNIDOS DE AMERICA", realName:"Estados Unidos", code:"US"],
			[name: "GEORGIA", realName:"Georgia", code:"GE"],
			[name: "GHANA", realName:"Ghana", code:"GH"],
			[name: "GUINEA", realName:"Guinea", code:"GN"],
			[name: "INDONESIA", realName:"Indonesia", code:"ID"],
			[name: "IRAN", realName:"Irán", code:"IR"],
			[name: "ISRAEL", realName:"Israel", code:"IL"],
			[name: "LIBANO", realName:"Líbano", code:"LB"],
			[name: "MALASIA", realName:"Malasia", code:"MY"],
			[name: "MARRUECOS", realName:"Marruecos", code:"MA"],
			[name: "PAKISTAN", realName:"Pakistán", code:"PK"],
			[name: "SRI LANKA", realName:"Sri Lanka", code:"LK"],
			[name: "SUDAFRICA", realName:"Sudáfrica", code:"ZA"],
			[name: "TAILANDIA", realName:"Tailandia", code:"TH"],
			[name: "TURQUIA", realName:"Turquía", code:"TR"],
			[name: "VENEZUELA", realName:"Venezuela", code:"VE"]
		]
	}
}
