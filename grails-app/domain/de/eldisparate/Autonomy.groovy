package de.eldisparate

class Autonomy {
	String name
	String urlName = ""
	Integer area
	Integer habitants
	String president = ""
	String pib = ""
	String ranking = ""
	
	String totalImports = ""
	String totalExports = ""
	String gunsImports = ""
	String gunsExports = ""
	
	String imageMapName = ""
	

    static constraints = {
		name()
		urlName(nullable: true, blank:true)
		area(nullable: true, blank:true)
		habitants(nullable: true, blank:true)
		president(nullable: true, blank:true)
		pib(nullable: true, blank:true)
		ranking(nullable: true, blank:true)
		totalImports(nullable: true, blank:true)
		totalExports(nullable: true, blank:true)
		gunsImports(nullable: true, blank:true)
		gunsExports(nullable: true, blank:true)
		imageMapName(nullable: true, blank:true)
    }
}
