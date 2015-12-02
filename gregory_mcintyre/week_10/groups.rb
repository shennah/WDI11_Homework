srand(2)

people = %w(Yilan Charley Andrew Daisy Donald Shennah Eric)
people.shuffle!

num_groups = 3
groups = Array.new(num_groups) { [] }

people.each_with_index do |person, index|
  groups[index % groups.size].push(person)
end

require 'pp'; pp groups