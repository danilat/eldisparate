package de.eldisparate

class Autonomy {
	String name
	String urlName
	Integer area
	Integer habitants
	String president
	String pib
	String ranking
	
	Integer totalImports
	Integer totalExports
	Integer gunsImports
	Integer gunsExports
	
	String imageMapName

    static constraints = {
		name()
		urlName()
		area()
		habitants()
		president()
		pib()
		totalImports(nullable: true, blank:true)
		totalExports(nullable: true, blank:true)
		gunsImports(nullable: true, blank:true)
		gunsExports(nullable: true, blank:true)
		imageMapName(nullable: true, blank:true)
    }
}
