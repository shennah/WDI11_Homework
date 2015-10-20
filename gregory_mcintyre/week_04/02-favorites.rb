require 'pp'

users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  },
}

# How would you access Jonathan's Twitter handle (i.e. the string "tronathan")?

p users["Jonathan"][:twitter]

# How would you add the number 7 to Erik's favorite numbers?

users["Erik"][:favorite_numbers].push(7)
p users["Erik"][:favorite_numbers]

# How would you add yourself to the users hash?

users["Shennah"] = {:twitter=>"shennah", :favorite_numbers=>[7,12]}
pp users

# How would you return the array of Erik's favorite numbers?

p users["Erik"][:favorite_numbers]

# How would you return the smallest of Erik's favorite numbers?

p users["Erik"][:favorite_numbers].min

# How would you return an array of Anil's favorite numbers that are also even?

result = []
users["Anil"][:favorite_numbers].each do |x|
  if x % 2 == 0
    result.push(x)
  end
end
p result

p users["Anil"][:favorite_numbers].select{|x| x.even? }

# How would you return an array of the favorite numbers common to all users?

number_groups = users.values.map{|details| details[:favorite_numbers] }

result = number_groups.first
number_groups.each do |number_group|
  result = result & number_group
end
p result

result = number_groups[0] & number_groups[1] & number_groups[2]
p result

p number_groups.inject(:&)

# How would you return an array containing all users'
# favorite numbers, sorted, and excluding duplicates?

# e.g. [7, 8, 12, 14, 24]

puts "-"*30, "solution 1"
number_groups = users.values.map{|details| details[:favorite_numbers] }
result = []
number_groups.each do |number_group|
  result = result + number_group
end
p result
p result.sort
p result.sort.uniq

puts "-"*30, "solution 2"
number_groups = users.values.map{|details| details[:favorite_numbers] }
number_groups # array of arrays
numbers = number_groups.flatten.sort.uniq
p numbers

puts "-"*30, "solution 3"
pp users.values.map{|details| details[:favorite_numbers] }.flatten.sort.uniq

puts "-"*30, "solution 4"
pp users.values.map{|details| details[:favorite_numbers] }.inject(:|).sort

