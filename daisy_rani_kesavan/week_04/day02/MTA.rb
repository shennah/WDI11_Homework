$lines = {
	"N" => ["Times Square","34th","28th","23rd","Union Square", "8th"],
 	"L" => ["8th","6th","Union Square","3rd","1st"],
	"6" => ["Grand Central","33rd","28th","23rd","Union Square","Astor"]
}

stations = []
station1 = []
station2 = []
def planLine (lineName, stop0Name, stop1Name)
	lineName = lineName.to_s
	index0 = $lines[lineName].index(stop0Name)
	index1 = $lines[lineName].index(stop1Name)
		if index0 < index1
			stations = $lines[lineName][index0..index1]
		else
			stations = $lines[lineName][index1..index0]
			stations.reverse!
		end
 	return stations
end


def planTrip(line0Name, stop0Name, line1Name, stop1Name)
	p "Going from line #{line0Name} stop #{stop0Name} to line #{line1Name} stop #{stop1Name}"
		if line0Name == line1Name
			stations = planLine(line0Name, stop0Name, stop1Name)
		else
			stations1 = planLine(line0Name, stop0Name, "Union Square")
				if stations1.length > 0
					p "You must travel through the following stops on the #{line0Name} line: #{stations1.join(',')}"	
					stations1.pop
				end
					p "Change at Union Square"
			stations2 = planLine(line1Name, "Union Square", stop1Name)
				if stations2.length > 0
					p "Your journey continues through the following stops: #{stations2.join(',')}"
				end
			stations = stations1 + stations2
		end
	p "#{stations.length} stops in total."
end

planTrip("N", "34th", "6", "Grand Central")

