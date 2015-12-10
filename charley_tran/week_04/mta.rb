stations = {
  :nline => ['Times Square', '34th', '28th.n', '23rd.n', 'Union Square', '8th.n'],
  :lline => ['8th.l', '6th', 'Union Square', '3rd', '1st'],
  :line6 => ['Grand Central', '33rd', '28th.6', '23rd.6', 'Union Square', 'Astor Place']
}

# puts "Choose the line that you are getting on"
# lineA = gets.chomp
# puts "Choose the station you are getting on"
# stationA = gets.chomp
# puts "Choose the line you are getting off"
# lineB = gets.chomp
# puts "Choose the station you are getting off"
# stationB = gets.chomp

lineA = :line6
lineB = :nline
stationA = 'Grand Central'
stationB = '8th.n'




def defineStationList (stations, line, stationA, stationB)
  stationList=[]
  stopA = stations[line].index(stationA)
  stopB = stations[line].index(stationB)
  stationList << stations[line][stopA..stopB]
  if stopA > stopB
    stationList << stations[line][stopB..stopA].reverse
  end
  puts "You must travel through #{stationList.flatten}, through #{stationList.flatten.length} stations to reach your destination"
  # puts "You must travel through #{stationList.flatten} and through #{stationList.flatten.length} stations to reach your destination"
end

if lineA != lineB
  # stationList = []
  # line1 = []
  # line2 = []
  line1 = defineStationList(stations, lineA, stationA, 'Union Square')
  line2 = defineStationList(stations, lineB, 'Union Square', stationB)
  # p line1
  # p line2
  # stationList.concat(line1).concat(line2)
  # p stationList.flatten
end



if lineA == lineB
# definestationList(stations, lineA, stationA, stationB)
defineStationList(stations, lineA, stationA, stationB)
end

# stationList.concat(line1).concat(line2)
# p stationList.flatten
# puts "You must travel through #{stationList.flatten} and through #{stationList.flatten.length} stations to reach your destination"


# puts "You must travel through #{stationList} and through #{stationList} stations to reach your destiation"



# p stations[:nline].index('23rd.n')

# p defineStationList(:nline,:nline,'Times Square','8th.n')
# p defineStationList(:nline,:nline,'Times Square','8th.n').length
# p defineStationList(:nline,:nline,'Times Square','8th.n').join(' ')

