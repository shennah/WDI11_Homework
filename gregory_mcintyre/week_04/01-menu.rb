
loop do
  # print a "menu"
  puts "Choose an option"
  puts " 1) +"
  puts " 2) -"
  puts " 3) Quit"

  # ask which option the user wants
  choice = gets.to_i
  if choice == 1
    # they want to add numbers
  elsif choice == 3
    break # quit
  end
end