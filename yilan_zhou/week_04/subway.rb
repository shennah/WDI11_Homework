#20/10/15 homework week4 Tue
=begin
Title: MTA Lab
models a simple subway system.
The program takes the line and stop that a user is 
getting on at and the line and stop that user is getting off 
at and prints the total number of stops for the trip.
There are 3 subway lines:
The N line has the following stops: 
Times Square, 34th, 28th, 23rd, Union Square, and 8th
The L line has the following stops: 
8th, 6th, Union Square, 3rd, and 1st
The 6 line has the following stops: 
Grand Central, 33rd, 28th, 23rd, Union Square, and Astor Place.
All 3 subway lines only intersect at Union Square, 
=end

$lines = {
	"N" => ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
	"L" => ["8th", "6th", "Union Square", "3rd", "1st"],
	"6" => ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]
}

def getSameLineStops(line, beg, fin)
	 stops = []
	 line = line.to_s
	 a = $lines[line].index(beg)
	 b = $lines[line].index(fin)
	 if a < b 
	 	stops = $lines[line][a..b]
	 else
	 	stops = $lines[line][b..a]
	 	stops.reverse!
	 end
	 return stops 
end

def getStops(startLine, begStop, finLine, finStop)
	transfer = "Union Square"
	stops = []
	if startLine == finLine
		stops = getSameLineStops(startLine,begStop,finStop)
	else
		stops = getSameLineStops(startLine,begStop,transfer)
		stops.pop
		stops += getSameLineStops(finLine,transfer,finStop)
	end
	return stops 
end

p getStops("N","23rd",6,"Grand Central")


