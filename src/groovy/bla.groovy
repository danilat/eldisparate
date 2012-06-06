File file = new File("/Users/danilat/grails_apps/eldisparate/data/Exportaciones.dat")

def lineCount = 0  
file.eachLine() { line ->  
    def field = line.tokenize("#")  
    lineCount++
	println field[0]
//	println field[2]
    //closure(lineCount,field)  
}