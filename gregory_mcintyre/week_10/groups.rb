people = %w(Yilan Charley Andrew Daisy Donald Shennah Eric)
people.shuffle!

groups = [[],[],[]]
index = 0

people.each do |person|
  group = groups[index]
  group.push(person)
  index += 1
  index = (index % groups.size)
end

require 'pp'
pp groups