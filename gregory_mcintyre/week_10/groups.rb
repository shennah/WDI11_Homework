gem 'colorize'
require 'colorize'

srand(2)

people = %w(Yilan Charley Andrew Daisy Donald Shennah Eric)
people.shuffle!

num_groups = 3
groups = Array.new(num_groups) { [] }

people.each_with_index do |person, index|
  groups[index % groups.size].push(person)
end

colors = %w(blue red green)

groups.each_with_index do |group, index|
  puts group.join(", ").send(colors[index % colors.size])
end
