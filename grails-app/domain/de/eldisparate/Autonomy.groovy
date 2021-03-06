package de.eldisparate

class Autonomy {
	String name
	String realName = ""
	String area = ""
	String habitants = ""
	String density = ""
	String president = ""
	String pib = ""
	String ranking = ""
	String pibPerCapita = ""
	String rankingPerCapita = ""
	
	String totalImports = ""
	String totalExports = ""
	String gunsImports = ""
	String gunsExports = ""
	
	static hasMany = [exportsTo:ImporterCountry, importsFrom:ExporterCountry]

    static constraints = {
		name()
		realName(nullable: true, blank:true)
		area(nullable: true, blank:true)
		habitants(nullable: true, blank:true)
		density(nullable: true, blank:true)
		president(nullable: true, blank:true)
		pib(nullable: true, blank:true)
		ranking(nullable: true, blank:true)
		pibPerCapita(nullable: true, blank:true)
		rankingPerCapita(nullable: true, blank:true)
		totalImports(nullable: true, blank:true)
		totalExports(nullable: true, blank:true)
		gunsImports(nullable: true, blank:true)
		gunsExports(nullable: true, blank:true)
    }
}
