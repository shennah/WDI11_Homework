require "pp"

subway = {
  n: ["Times Square", "34th Street", "28th Street", "23rd Street", "Union Square", "8th Avenue"],

  l: ["8th Avenue", "6th Avenue", "Union Square", "3rd Street", "1st Avenue"],

  l6: ["Grand Central", "33rd Street", "28th Street", "23rd Street", "Union Square", "Astor Place"],
}

def get_to_station(on, off, myline, subway)
  line = subway[myline]
  # fetch is a useful method by the looks of it
  start = line.index(on)
  finish = line.index(off)
  if start < finish
    route = line[start..finish]
  elsif start > finish
    route = line[finish..start].reverse
  end
  return route
end

def get_to_with_change(on, lineon, off, lineoff, subway)
  route = [get_to_station(on, "Union Square", lineon, subway), get_to_station("Union Square", off, lineoff, subway)]
  cleaned_route = route.flatten.uniq
  if lineon != lineoff
    cleaned_route[cleaned_route.index("Union Square")] = "Union Square - change here"
  end
  print "\n"
  puts "Your route has #{cleaned_route.length} stops:"
  print "\n"
  puts cleaned_route
end

def ui_for_app(subway)
  puts "Please enter your start station: >> "
  get_on_station = gets.strip
  puts "Please enter your start line: >> "
  get_on_line = gets.strip.to_sym
  puts "Please enter your finish station: >> "
  get_off_station = gets.strip
  puts "Please enter your finish line: "
  get_off_line = gets.strip.to_sym
  get_to_with_change(get_on_station, get_on_line, get_off_station, get_off_line, subway)
end

ui_for_app(subway)
