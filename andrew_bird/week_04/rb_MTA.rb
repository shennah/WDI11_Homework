# Title: MTA Lab
# Activity:

# Students should create a program that models a simple subway system.

# The program takes the line and stop that a user is getting on at and the line and stop that user is getting off at and prints the total number of stops for the trip.

# There are 3 subway lines:
# The N line has the following stops: Times Square, 34th, 28th, 23rd, Union Square, and 8th
# The L line has the following stops: 8th, 6th, Union Square, 3rd, and 1st
# The 6 line has the following stops: Grand Central, 33rd, 28th, 23rd, Union Square, and Astor Place.
# All 3 subway lines intersect at Union Square, but there are no other intersection points.
# For example, this means the 28th stop on the N line is different than the 28th street stop on the 6 line, so you'll have to differentiate this when you name your stops in the arrays.
# Hints:

# Don't worry about user input initially: get it working with hardcoded values first, and wire up the user interface once that's working
# Consider diagraming the lines by sketching out the subway lines and their stops and intersection.
# Make subway lines keys in a hash, while the values are an array of all the stops on each line.
# The key to the lab is to find the intersection of the lines at Union Square.
# Make sure the stops that are the same for different lines have different names (i.e. 23rd on the N and on the 6 need to be differentiated)

line_N = {name: "Line N",
	stops: ['Times Square', '34th', '28th', '23rd', 'Union Square','8th']}
line_L = {name: "Line L",
	stops: ['8th', '6th', 'Union Square', '3rd','1st']}
line_6 = {name: "Line 6",
	stops: ['Grand Central', '33rd', '28th', '23rd', 'Union Square','Astor Place']}
#
def travel_a_line(line, start, finish)
	start_i =  line[:stops].index(start)
	finish_i = line[:stops].index(finish)

	inv_s = line[:stops].length - start_i -1
	inv_f = line[:stops].length - finish_i -1

	if start_i < finish_i
		return line[:stops][start_i.. finish_i]
	else
		rev = line[:stops].reverse
		return rev[inv_s.. inv_f]
	end	
end

def travel_to_union(line, start)
	travel_a_line(line, start, "Union Square")
end

def travel_from_union(line, finish)
	travel_a_line(line, "Union Square", finish)
end

def plan_trip(start_line, start, finish_line, finish)
	result = ""
	stops =[]
	if start_line == finish_line
		stops = travel_a_line(start_line, start, finish)
		result = "To travel from #{start} to #{finish}, go through stations: "
		result << stops.join(", ")
		result << ". You do not need to change lines on this trip"
	else
			stops = travel_to_union(start_line, start)
			stops.pop
			result = "To travel from #{start} to #{finish}, go through stations: "
			result << stops.join(", ")
			result << ". Change at Union Square to the #{finish_line[:name]}. Then go through: "
			stops = travel_from_union(finish_line, finish)
			result << stops.join(", ")
	end
	print result
	print "\n"
end	

plan_trip(line_L, "1st", line_N, "Times Square")
#plan_trip(line_N, "34th", line_N, "8th")
 #puts plan_trip(line_6, "Grand Central", line_N, "Times Square")
 #puts plan_trip(line_L, "Union Square", line_N, "Times Square")


