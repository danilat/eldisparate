package de.eldisparate

class ImporterCountry {
	static belongsTo = [autonomy:Autonomy]
	String name
	String money

    static constraints = {
    }
}
