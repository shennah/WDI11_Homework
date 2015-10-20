require "pp"

subway = {
  n: ["Times Square", "34th Street", "28th Street", "23rd Street", "Union Square", "8th Avenue"],

  l: ["8th Avenue", "6th Avenue", "Union Square", "3rd Street", "1st Avenue"],

  l6: ["Grand Central", "33rd Street", "28th Street", "23rd Street", "Union Square", "Astor Place"],
}

# pp $subway[:n]

pp subway[:n].index("Union Square")
union_index = subway[:n].index("Union Square")
# pp union_index

route_to_union_forwards = subway[:n].first(subway[:n].length-union_index)
# pp route_to_union_forwards

route_to_union_backwards = subway[:n].last(union_index)
# pp route_to_union_backwards

def get_to_station(on, off, myline, subway)
  line = subway[myline]
  start = line.index(on)
  finish = line.index(off)
  if start < finish
    # puts start, finish
    route = line[start..finish]
  elsif start > finish
    # puts finish, start
    route = line[finish..start].reverse
  end
  return route
end

def get_to_with_change(on, lineon, off, lineoff, subway)
  route = [get_to_station(on, "Union Square", lineon, subway), get_to_station("Union Square", off, lineoff, subway)]
  cleaned_route = route.flatten.uniq
  cleaned_route[cleaned_route.index("Union Square")] = "Union Square - change here"
  puts cleaned_route
  puts "Your route has #{cleaned_route.length} stops"
end

get_to_with_change("Times Square", :n, "1st Avenue", :l, subway)



# get_to_station("Times Square", "Union Square", :n)

# get_to_station("Union Square", "8th Avenue")
# get_to_station("8th Avenue", "Union Square")
# get_to_station("Union Square", "Times Square")
