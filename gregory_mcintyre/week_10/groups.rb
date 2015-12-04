gem 'colorize'
require 'colorize'
require 'date'

srand Date.today.yday

people = %w(Yilan Charley Andrew Daisy Donald Shennah )
people.shuffle!

num_groups = 3
groups = Array.new(num_groups) { [] }

people.each_with_index do |person, index|
  groups[index % groups.size].push(person)
end

colors = String.colors.reject { |x| x.to_s =~ /light|default|white/ }.shuffle

letter = 'A'
groups.each_with_index do |group, index|
  str = (letter + ': ' + group.join(', '))
  puts str.send(colors[index % colors.size])
  letter.succ!
end
