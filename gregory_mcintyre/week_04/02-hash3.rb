

puts "Select an option"
puts "1) Add"
puts "2) Subtract"

choice = 1
if choice == 1
elsif choice == 2
end

menu_items = {
  1 => {
    name: "Add",
    operator: "+",
  },
  2 => {
    name: "Subtract",
    operator: "-",
  },
}

menu_items.each do |num, details|
  puts "#{num}: #{details[:name]}"
end

choice = 1
choice_details = menu_items[choice]



if a > b
  puts "A"
else
  puts "B"
end

value = {
  true => "A",
  false => "B",
}[a > b]
puts value

