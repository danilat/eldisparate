package de.eldisparate.csv

class CSVParser {  
    static def parseCSV(file,closure) {  
        def lineCount = 0  
        file.eachLine() { line ->  
            def field = line.tokenize("#")  
            lineCount++
			println field
            //closure(lineCount,field)  
        }  
    }  
}