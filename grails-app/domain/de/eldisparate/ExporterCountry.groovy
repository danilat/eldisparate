package de.eldisparate

class ExporterCountry {
	static belongsTo = [autonomy:Autonomy]
	String name
	String money

    static constraints = {
    }
}
