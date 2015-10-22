
File.open("people.csv", "a+") do |file|

  loop do
    print "Would you like to add someone to the database? (y / n) "
    response = gets.chomp.downcase
    if response == "y"
      print "Enter name, age, gender (separated by commas): "
      person_data = gets.chomp
      file.puts person_data
      file.flush
    else
      break
    end
  end


end # closes the file

